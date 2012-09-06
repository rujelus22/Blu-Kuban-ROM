.class public Lcom/google/android/apps/plus/fragments/EditEventFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;
.implements Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;,
        Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;,
        Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;",
        "Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;"
    }
.end annotation


# static fields
.field private static final EVENT_COLUMNS:[Ljava/lang/String;

.field private static final THEME_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

.field private mChanged:Z

.field private mDescriptionView:Landroid/widget/EditText;

.field private mEndDateView:Landroid/widget/Button;

.field private mEndTimeView:Landroid/widget/Button;

.field private mError:Z

.field private mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

.field private mEventDescriptionTextWatcher:Landroid/text/TextWatcher;

.field private mEventId:Ljava/lang/String;

.field private mEventLoaded:Z

.field private mEventNameTextWatcher:Landroid/text/TextWatcher;

.field private mEventNameView:Landroid/widget/EditText;

.field private mEventThemeId:I

.field private mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

.field private mExternalId:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

.field private mLocationView:Landroid/widget/TextView;

.field private mNewEvent:Z

.field private mOwnerId:Ljava/lang/String;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mStartDateView:Landroid/widget/Button;

.field private mStartTimeView:Landroid/widget/Button;

.field private mThemeProgressBar:Landroid/widget/ProgressBar;

.field private mThemeSelectionTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "theme_id"

    aput-object v1, v0, v2

    const-string v1, "image_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->THEME_COLUMNS:[Ljava/lang/String;

    .line 111
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "event_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->EVENT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    .line 1097
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditEventFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 1110
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditEventFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventNameTextWatcher:Landroid/text/TextWatcher;

    .line 1133
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventDescriptionTextWatcher:Landroid/text/TextWatcher;

    .line 1245
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onAudienceChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EditEventFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mDescriptionView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->THEME_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->EVENT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventNameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/fragments/EditEventFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    return-object v0
.end method

.method private bindDate()V
    .registers 1

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindStartDate()V

    .line 387
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 388
    return-void
.end method

.method private bindEndDate()V
    .registers 6

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_21

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const v4, 0x8016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :goto_20
    return-void

    .line 408
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndDateView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method private bindEndTime()V
    .registers 6

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndTimeView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_24
    return-void

    .line 429
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndTimeView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method

.method private bindEvent()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-nez v0, :cond_5

    .line 383
    :goto_4
    return-void

    .line 375
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mDescriptionView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindDate()V

    .line 381
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindTime()V

    .line 382
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindLocation()V

    goto :goto_4

    .line 375
    :cond_2b
    const/16 v0, 0x8

    goto :goto_c
.end method

.method private bindLocation()V
    .registers 4

    .prologue
    .line 434
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    .line 435
    .local v0, location:Lcom/google/api/services/plusi/model/Place;
    if-eqz v0, :cond_e

    .line 436
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mLocationView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_d
    return-void

    .line 438
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mLocationView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private bindStartDate()V
    .registers 6

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mStartDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const v4, 0x8016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method private bindStartTime()V
    .registers 6

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mStartTimeView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_24
    return-void
.end method

.method private bindTime()V
    .registers 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindStartTime()V

    .line 414
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 415
    return-void
.end method

.method private clearEndTime()V
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 739
    return-void
.end method

.method private getDefaultEventTime()J
    .registers 5

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    .local v0, cal:Ljava/util/Calendar;
    const/16 v1, 0x5a

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 195
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 196
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 197
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 199
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private hasContent()Z
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->isEmptyAudience()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isEmptyAudience()Z
    .registers 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 296
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v2

    add-int/2addr v1, v2

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private onAudienceChanged()V
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    if-eqz v0, :cond_9

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventChanged()V

    .line 446
    :cond_9
    return-void
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1339
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 1340
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_d

    .line 1341
    invoke-static {v1, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1343
    :cond_d
    return-void
.end method

.method private setEndTime(J)V
    .registers 6
    .parameter "timeInMillis"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-nez v0, :cond_2b

    .line 727
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    new-instance v1, Lcom/google/api/services/plusi/model/EventTime;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/EventTime;-><init>()V

    iput-object v1, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 728
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getDefaultEventTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    .line 729
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventTime;->timezone:Ljava/lang/String;

    .line 731
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_46

    .line 732
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z

    .line 735
    :cond_46
    return-void
.end method

.method private setEventTheme(ILjava/lang/String;Z)V
    .registers 6
    .parameter "themeId"
    .parameter "imageUrl"
    .parameter "override"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-nez v0, :cond_5

    .line 958
    :cond_4
    :goto_4
    return-void

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    if-nez v0, :cond_14

    .line 945
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    new-instance v1, Lcom/google/api/services/plusi/model/ThemeSpecification;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/ThemeSpecification;-><init>()V

    iput-object v1, v0, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    .line 948
    :cond_14
    if-nez p3, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ThemeSpecification;->themeId:Ljava/lang/Integer;

    if-nez v0, :cond_30

    .line 949
    :cond_1e
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    .line 950
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/ThemeSpecification;->themeId:Ljava/lang/Integer;

    .line 951
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/EventThemeView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 952
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ThemeSpecification;->themeId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 953
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    .line 956
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/EventThemeView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setStartTime(J)V
    .registers 5
    .parameter "timeInMillis"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1b

    .line 720
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z

    .line 723
    :cond_1b
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 978
    if-eqz p1, :cond_9

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-eqz v2, :cond_a

    .line 1003
    :cond_9
    :goto_9
    return-void

    .line 982
    :cond_a
    const v2, 0x7f090085

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 983
    .local v1, serverErrorView:Landroid/widget/TextView;
    const v2, 0x7f09009d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 984
    .local v0, contentView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v2, :cond_28

    .line 985
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 987
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->showContent(Landroid/view/View;)V

    goto :goto_9

    .line 988
    :cond_28
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventLoaded:Z

    if-nez v2, :cond_36

    .line 989
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 990
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_9

    .line 992
    :cond_36
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mError:Z

    if-eqz v2, :cond_4a

    .line 993
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 994
    const v2, 0x7f0803dd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 995
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 996
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->showContent(Landroid/view/View;)V

    goto :goto_9

    .line 998
    :cond_4a
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 999
    const v2, 0x7f0803de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1000
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->showContent(Landroid/view/View;)V

    goto :goto_9
.end method


# virtual methods
.method public createEvent()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-nez v0, :cond_74

    .line 172
    new-instance v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusEvent;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    new-instance v1, Lcom/google/api/services/plusi/model/EventOptions;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/EventOptions;-><init>()V

    iput-object v1, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventOptions;->openEventAcl:Ljava/lang/Boolean;

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventOptions;->openPhotoAcl:Ljava/lang/Boolean;

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    new-instance v1, Lcom/google/api/services/plusi/model/EventTime;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/EventTime;-><init>()V

    iput-object v1, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getDefaultEventTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EventTime;->timezone:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mExternalId:Ljava/lang/String;

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    .line 186
    :cond_74
    return-void
.end method

.method public editEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventId:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mOwnerId:Ljava/lang/String;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    .line 210
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 1095
    :cond_c
    :goto_c
    return-void

    .line 1080
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1082
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 1083
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1086
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1088
    if-eqz p2, :cond_41

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1089
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-eqz v1, :cond_3d

    const v1, 0x7f0801fe

    :goto_34
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_3d
    const v1, 0x7f0801fd

    goto :goto_34

    .line 1092
    :cond_41
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    if-eqz v1, :cond_c

    .line 1093
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventSaved()V

    goto :goto_c
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isValidEvent()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-nez v2, :cond_7

    .line 285
    :cond_6
    :goto_6
    return v1

    .line 277
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 281
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-eqz v2, :cond_1f

    .line 282
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->isEmptyAudience()Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_1b
    move v1, v0

    goto :goto_6

    :cond_1d
    move v0, v1

    goto :goto_1b

    :cond_1f
    move v1, v0

    .line 285
    goto :goto_6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 746
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 747
    if-ne p2, v4, :cond_9

    if-nez p3, :cond_a

    .line 778
    :cond_9
    :goto_9
    return-void

    .line 751
    :cond_a
    packed-switch p1, :pswitch_data_56

    goto :goto_9

    .line 753
    :pswitch_e
    const-string v3, "location"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 754
    .local v0, bytes:[B
    if-nez v0, :cond_1e

    .line 755
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v5, v3, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    .line 759
    :goto_1a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindLocation()V

    goto :goto_9

    .line 757
    :cond_1e
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {}, Lcom/google/api/services/plusi/model/PlaceJson;->getInstance()Lcom/google/api/services/plusi/model/PlaceJson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/api/services/plusi/model/PlaceJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plusi/model/Place;

    iput-object v3, v4, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    goto :goto_1a

    .line 764
    .end local v0           #bytes:[B
    :pswitch_2d
    const-string v3, "theme_id"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 765
    .local v2, themeId:I
    const-string v3, "theme_url"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, imageUrl:Ljava/lang/String;
    if-eq v2, v4, :cond_9

    if-eqz v1, :cond_9

    .line 767
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setEventTheme(ILjava/lang/String;Z)V

    .line 768
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_9

    .line 774
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #themeId:I
    :pswitch_4a
    const-string v3, "audience"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_9

    .line 751
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_e
        :pswitch_2d
        :pswitch_4a
    .end packed-switch
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 486
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 470
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_132

    .line 589
    :goto_9
    return-void

    .line 509
    :sswitch_a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHANGE_ACL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 510
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const v2, 0x7f08040c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/16 v4, 0xb

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 522
    :sswitch_31
    new-instance v10, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;

    invoke-direct {v10, v7}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;-><init>(I)V

    .line 523
    .local v10, dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;
    invoke-virtual {v10, p0, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 525
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v9, args:Landroid/os/Bundle;
    const-string v0, "date_time"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 527
    invoke-virtual {v10, v9}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v10, v0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9

    .line 533
    .end local v9           #args:Landroid/os/Bundle;
    .end local v10           #dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;
    :sswitch_5a
    new-instance v10, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;

    invoke-direct {v10, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;-><init>(I)V

    .line 534
    .restart local v10       #dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;
    invoke-virtual {v10, p0, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 536
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 537
    .restart local v9       #args:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_89

    .line 538
    const-string v0, "date_time"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 542
    :goto_7c
    invoke-virtual {v10, v9}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v10, v0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9

    .line 540
    :cond_89
    const-string v0, "date_time"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7c

    .line 548
    .end local v9           #args:Landroid/os/Bundle;
    .end local v10           #dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;
    :sswitch_99
    new-instance v10, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;

    invoke-direct {v10, v7}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;-><init>(I)V

    .line 549
    .local v10, dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;
    invoke-virtual {v10, p0, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 551
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 552
    .restart local v9       #args:Landroid/os/Bundle;
    const-string v0, "date_time"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 553
    invoke-virtual {v10, v9}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 554
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v10, v0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 559
    .end local v9           #args:Landroid/os/Bundle;
    .end local v10           #dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;
    :sswitch_c3
    new-instance v10, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;

    invoke-direct {v10, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;-><init>(I)V

    .line 560
    .restart local v10       #dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;
    invoke-virtual {v10, p0, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 562
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 564
    .restart local v9       #args:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_f3

    .line 565
    const-string v0, "date_time"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 570
    :goto_e5
    invoke-virtual {v10, v9}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 571
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v10, v0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 567
    :cond_f3
    const-string v0, "date_time"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x6ddd00

    add-long/2addr v1, v3

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_e5

    .line 576
    .end local v9           #args:Landroid/os/Bundle;
    .end local v10           #dialog:Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;
    :sswitch_107
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHANGE_LOCATION:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 577
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getEventLocationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/Place;)Landroid/content/Intent;

    move-result-object v11

    .line 579
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_9

    .line 584
    .end local v11           #intent:Landroid/content/Intent;
    :sswitch_121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getEventThemePickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v11

    .line 585
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11, v7}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_9

    .line 507
    :sswitch_data_132
    .sparse-switch
        0x7f090069 -> :sswitch_a
        0x7f09009e -> :sswitch_121
        0x7f0900a2 -> :sswitch_31
        0x7f0900a3 -> :sswitch_99
        0x7f0900a4 -> :sswitch_5a
        0x7f0900a5 -> :sswitch_c3
        0x7f0900a7 -> :sswitch_107
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    if-eqz p1, :cond_5c

    .line 226
    const-string v1, "new_event"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    .line 227
    const-string v1, "event_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventId:Ljava/lang/String;

    .line 228
    const-string v1, "owner_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mOwnerId:Ljava/lang/String;

    .line 229
    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 230
    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 231
    .local v0, bytes:[B
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 233
    .end local v0           #bytes:[B
    :cond_38
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 234
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 236
    :cond_4c
    const-string v1, "external_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mExternalId:Ljava/lang/String;

    .line 237
    const-string v1, "changed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z

    .line 240
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 242
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-nez v1, :cond_74

    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 245
    :cond_74
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 9
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 863
    .local v4, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    .line 864
    .local v5, account:Lcom/google/android/apps/plus/content/EsAccount;
    packed-switch p1, :pswitch_data_20

    .line 893
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 866
    :pswitch_d
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditEventFragment$2;

    invoke-direct {v0, p0, v4, v4, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c

    .line 880
    :pswitch_13
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c

    .line 864
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 305
    const v2, 0x7f03002a

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 306
    .local v1, view:Landroid/view/View;
    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EventThemeView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

    .line 307
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/EventThemeView;->setOnImageLoadedListener(Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;)V

    .line 308
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/EventThemeView;->setClickable(Z)V

    .line 309
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/EventThemeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mThemeSelectionTextView:Landroid/widget/TextView;

    .line 312
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mThemeSelectionTextView:Landroid/widget/TextView;

    const v3, 0x7f080407

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mThemeProgressBar:Landroid/widget/ProgressBar;

    .line 316
    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventNameView:Landroid/widget/EditText;

    .line 317
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 319
    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mStartDateView:Landroid/widget/Button;

    .line 320
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mStartDateView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndDateView:Landroid/widget/Button;

    .line 323
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndDateView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mStartTimeView:Landroid/widget/Button;

    .line 326
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mStartTimeView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndTimeView:Landroid/widget/Button;

    .line 329
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEndTimeView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const v2, 0x7f0900a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mLocationView:Landroid/widget/TextView;

    .line 332
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    .line 336
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    const v3, 0x7f080401

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setEmptyAudienceHint(I)V

    .line 337
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    new-instance v3, Lcom/google/android/apps/plus/fragments/EditEventFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 347
    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mDescriptionView:Landroid/widget/EditText;

    .line 348
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mDescriptionView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventDescriptionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 350
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0035

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 353
    .local v0, themeContext:Landroid/content/Context;
    new-instance v2, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 355
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 356
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowPersonNameDialog(Z)V

    .line 357
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V

    .line 358
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 359
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 360
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 361
    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEvent()V

    .line 365
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->updateView(Landroid/view/View;)V

    .line 367
    return-object v1
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 848
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 855
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 841
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 829
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 830
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    if-eqz v0, :cond_11

    .line 831
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventClosed()V

    .line 834
    :cond_11
    return-void
.end method

.method public onDiscard()V
    .registers 7

    .prologue
    const v4, 0x7f08020e

    const v3, 0x7f08020b

    const/4 v5, 0x0

    .line 797
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-eqz v1, :cond_42

    .line 798
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 799
    const v1, 0x7f08041d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08041e

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 804
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, p0, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 805
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 822
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_37
    :goto_37
    return-void

    .line 806
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    if-eqz v1, :cond_37

    .line 807
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventClosed()V

    goto :goto_37

    .line 810
    :cond_42
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z

    if-eqz v1, :cond_6d

    .line 811
    const v1, 0x7f08041f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080420

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 816
    .restart local v0       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, p0, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 817
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_37

    .line 818
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_6d
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    if-eqz v1, :cond_37

    .line 819
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventClosed()V

    goto :goto_37
.end method

.method public onDismissSuggestionAction(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 500
    return-void
.end method

.method public onEndDateCleared()V
    .registers 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->clearEndTime()V

    .line 651
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 652
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 653
    return-void
.end method

.method public onEndDateSet(III)V
    .registers 11
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const-wide/32 v5, 0x6ddd00

    .line 622
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 623
    .local v0, cal:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v3, :cond_65

    .line 624
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 629
    :goto_1a
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_35

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_35

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p3, :cond_64

    .line 632
    :cond_35
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 634
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 636
    .local v1, newEndTimeInMillis:J
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_56

    .line 637
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v1, v3, v5

    .line 639
    :cond_56
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setEndTime(J)V

    .line 640
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 641
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 642
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventChanged()V

    .line 644
    .end local v1           #newEndTimeInMillis:J
    :cond_64
    return-void

    .line 626
    :cond_65
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1a
.end method

.method public onEndTimeCleared()V
    .registers 1

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->clearEndTime()V

    .line 714
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 715
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 716
    return-void
.end method

.method public onEndTimeSet(II)V
    .registers 12
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const-wide/32 v7, 0x6ddd00

    const/16 v6, 0xc

    const/16 v5, 0xb

    .line 685
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 686
    .local v0, cal:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v3, :cond_63

    .line 687
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 692
    :goto_1e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v3, :cond_30

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p2, :cond_62

    .line 694
    :cond_30
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 695
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 697
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 699
    .local v1, newEndTimeInMillis:J
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_54

    .line 700
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v1, v3, v7

    .line 702
    :cond_54
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setEndTime(J)V

    .line 703
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 704
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 705
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventChanged()V

    .line 707
    .end local v1           #newEndTimeInMillis:J
    :cond_62
    return-void

    .line 689
    :cond_63
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1e
.end method

.method public onImageLoaded(Lcom/google/android/apps/plus/views/EsImageView;)V
    .registers 4
    .parameter "imageView"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mThemeSelectionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mThemeProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 975
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 9
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 901
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 937
    :cond_9
    :goto_9
    return-void

    .line 903
    :pswitch_a
    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 904
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 905
    .local v2, themeId:I
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, imageUrl:Ljava/lang/String;
    invoke-direct {p0, v2, v1, v5}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setEventTheme(ILjava/lang/String;Z)V

    goto :goto_9

    .line 912
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #themeId:I
    :pswitch_1e
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventLoaded:Z

    .line 913
    if-nez p2, :cond_2c

    .line 914
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mError:Z

    .line 934
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->updateView(Landroid/view/View;)V

    goto :goto_9

    .line 916
    :cond_2c
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mError:Z

    .line 917
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 918
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 920
    const/4 v0, -0x1

    .line 921
    .local v0, eventThemeId:I
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    if-eqz v3, :cond_55

    .line 922
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/Theme;->themeId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 925
    :cond_55
    iget v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    if-eq v0, v3, :cond_63

    .line 926
    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventThemeId:I

    .line 927
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 930
    :cond_63
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEvent()V

    goto :goto_24

    .line 901
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1e
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 965
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1055
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 1056
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1057
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 479
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1032
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 1033
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1035
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 1036
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1037
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1038
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1039
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1043
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_3e

    .line 1044
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1045
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1046
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onAudienceChanged()V

    .line 1048
    :cond_3e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "new_event"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "event_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v0, :cond_30

    .line 260
    const-string v0, "event"

    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-virtual {v1, v2}, Lcom/google/api/services/plusi/model/PlusEventJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 262
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_3f

    .line 263
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    :cond_3f
    const-string v0, "external_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mExternalId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "changed"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 461
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1010
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onStart()V

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 1014
    :cond_c
    return-void
.end method

.method public onStartDateSet(III)V
    .registers 9
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 595
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 596
    .local v0, cal:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 598
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_26

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_26

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p3, :cond_59

    .line 601
    :cond_26
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 603
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 604
    .local v1, newStartTimeInMillis:J
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setStartTime(J)V

    .line 605
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindStartDate()V

    .line 607
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_54

    .line 610
    const-wide/32 v3, 0x6ddd00

    add-long/2addr v3, v1

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setEndTime(J)V

    .line 611
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 612
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 614
    :cond_54
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventChanged()V

    .line 616
    .end local v1           #newStartTimeInMillis:J
    :cond_59
    return-void
.end method

.method public onStartTimeSet(II)V
    .registers 10
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    .line 659
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 660
    .local v0, cal:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 662
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_21

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p2, :cond_57

    .line 663
    :cond_21
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 664
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 666
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 667
    .local v1, newStartTimeInMillis:J
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setStartTime(J)V

    .line 668
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindStartTime()V

    .line 670
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_52

    .line 673
    const-wide/32 v3, 0x6ddd00

    add-long/2addr v3, v1

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setEndTime(J)V

    .line 674
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndDate()V

    .line 675
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->bindEndTime()V

    .line 677
    :cond_52
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    invoke-interface {v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventChanged()V

    .line 679
    .end local v1           #newStartTimeInMillis:J
    :cond_57
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 1021
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onStop()V

    .line 1022
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 1025
    :cond_c
    return-void
.end method

.method public onUnblockPersonAction(Ljava/lang/String;Z)V
    .registers 3
    .parameter "personId"
    .parameter "isPlusPage"

    .prologue
    .line 493
    return-void
.end method

.method public save()V
    .registers 6

    .prologue
    .line 784
    const v0, 0x7f080400

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 785
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mNewEvent:Z

    if-eqz v0, :cond_2b

    .line 786
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mExternalId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->createEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 791
    :goto_2a
    return-void

    .line 789
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->updateEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_2a
.end method

.method public setOnEventChangedListener(Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    .line 217
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 1063
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1066
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1067
    return-void
.end method
