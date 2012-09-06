.class public Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "EventDetailsSecondaryLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;
    }
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sPadding:I

.field private static sSeeInviteesTextColor:I

.field private static sSeeInvitesHeight:I

.field private static sSeeInvitesText:Ljava/lang/String;

.field private static sSeeInvitesTextSize:F

.field private static sSpinnerUnrespondedBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mCurrentSelectionIndex:I

.field private mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

.field private mInvitedSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

.field private mListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mMaybeSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

.field private mRsvpSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

.field private mSpinnerDefaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mViewInvitees:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 71
    sget-boolean v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sInitialized:Z

    if-nez v2, :cond_43

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sPadding:I

    .line 76
    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInviteesTextColor:I

    .line 78
    const v2, 0x7f08014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInvitesText:Ljava/lang/String;

    .line 79
    const v2, 0x7f0d0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInvitesTextSize:F

    .line 81
    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInvitesHeight:I

    .line 83
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSpinnerUnrespondedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    sput-boolean v7, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sInitialized:Z

    .line 88
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_43
    new-instance v2, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mInvitedSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    .line 89
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mInvitedSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v2, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mMaybeSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mMaybeSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v2, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    .line 95
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->addView(Landroid/view/View;)V

    .line 97
    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    .line 98
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;-><init>(Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    sget-object v3, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInvitesText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    sget v3, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInvitesTextSize:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    sget v3, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInviteesTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput v6, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mCurrentSelectionIndex:I

    .line 114
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerDefaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    sget-object v2, Lcom/google/android/apps/plus/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    sget v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sPadding:I

    invoke-virtual {p0, v5, v5, v5, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->addPadding(IIII)V

    .line 122
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 11
    .parameter "event"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, currentTime:J
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsEventData;->getEventEndTime(Lcom/google/api/services/plusi/model/PlusEvent;)J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_84

    const/4 v3, 0x1

    .line 166
    .local v3, past:Z
    :goto_e
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v6, v3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;Ljava/lang/String;Z)V

    .line 167
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mMaybeSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v6, v3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;Ljava/lang/String;Z)V

    .line 168
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mInvitedSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v6, v3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;Ljava/lang/String;Z)V

    .line 169
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 171
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsEventData;->canRsvp(Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 172
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->isUnresponded()Z

    move-result v2

    .line 173
    .local v2, oldUnresponded:Z
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpType(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->setNotResponded(Z)V

    .line 175
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->setPast(Z)V

    .line 176
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->isUnresponded()Z

    move-result v5

    if-eqz v5, :cond_86

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSpinnerUnrespondedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_51
    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mCurrentSelectionIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_61

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->isUnresponded()Z

    move-result v5

    if-eq v2, v5, :cond_6d

    .line 181
    :cond_61
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpType(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->getPosition(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mCurrentSelectionIndex:I

    .line 185
    :cond_6d
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    iget v6, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mCurrentSelectionIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 186
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->notifyDataSetChanged()V

    .line 187
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 188
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 192
    .end local v2           #oldUnresponded:Z
    :goto_83
    return-void

    .end local v3           #past:Z
    :cond_84
    move v3, v4

    .line 164
    goto :goto_e

    .line 176
    .restart local v2       #oldUnresponded:Z
    .restart local v3       #past:Z
    :cond_86
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerDefaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    .line 190
    .end local v2           #oldUnresponded:Z
    :cond_89
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_83
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->clear()V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mMaybeSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->clear()V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->clear()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 199
    return-void
.end method

.method protected measureChildren(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 127
    .local v2, width:I
    const/4 v1, 0x0

    .line 128
    .local v1, left:I
    const/4 v0, 0x0

    .line 131
    .local v0, currentY:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-static {v3, v2, v5, v4, v4}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measure(Landroid/view/View;IIII)V

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-static {v3, v1, v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->setCorner(Landroid/view/View;II)V

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getVisibility()I

    move-result v3

    if-nez v3, :cond_25

    .line 135
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sPadding:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 138
    :cond_25
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mGoingSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measureSummary(Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;III)I

    move-result v3

    add-int/2addr v0, v3

    .line 139
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mMaybeSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measureSummary(Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;III)I

    move-result v3

    add-int/2addr v0, v3

    .line 140
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mInvitedSummary:Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measureSummary(Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;III)I

    move-result v3

    add-int/2addr v0, v3

    .line 142
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    sget v4, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sSeeInvitesHeight:I

    invoke-static {v3, v2, v5, v4, v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measure(Landroid/view/View;IIII)V

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    invoke-static {v3, v1, v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->setCorner(Landroid/view/View;II)V

    .line 144
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 145
    return-void
.end method

.method public measureSummary(Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;III)I
    .registers 8
    .parameter "summary"
    .parameter "width"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, height:I
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 150
    sget v1, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->sPadding:I

    add-int/2addr v0, v1

    .line 151
    const/high16 v1, 0x4000

    invoke-static {p1, p2, v1, v2, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measure(Landroid/view/View;IIII)V

    .line 152
    invoke-static {p1, p3, p4}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->setCorner(Landroid/view/View;II)V

    .line 153
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->setVisibility(I)V

    .line 159
    :goto_1b
    return v0

    .line 156
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->setVisibility(I)V

    goto :goto_1b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mViewInvitees:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_d

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/EventActionListener;->onViewAllInviteesClicked()V

    .line 393
    :cond_d
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
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
    .line 360
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mCurrentSelectionIndex:I

    if-eq v0, p3, :cond_22

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerAdapter:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->isUnresponded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 362
    add-int/lit8 p3, p3, -0x1

    .line 365
    :cond_e
    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_19

    .line 366
    packed-switch p3, :pswitch_data_3c

    .line 379
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mRsvpSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mSpinnerDefaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iput p3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mCurrentSelectionIndex:I

    .line 382
    :cond_22
    return-void

    .line 368
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onRsvpChanged(Ljava/lang/String;)V

    goto :goto_19

    .line 371
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onRsvpChanged(Ljava/lang/String;)V

    goto :goto_19

    .line 374
    :pswitch_33
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onRsvpChanged(Ljava/lang/String;)V

    goto :goto_19

    .line 366
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
        :pswitch_33
    .end packed-switch
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
    .line 386
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
