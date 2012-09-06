.class public Lcom/google/android/apps/plus/views/EventDetailsHeaderView;
.super Landroid/view/ViewGroup;
.source "EventDetailsHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# static fields
.field private static sAvatarOverlap:I

.field private static sAvatarSize:I

.field private static sCollapseText:Ljava/lang/String;

.field private static sExpandText:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sOnAirColor:I

.field private static sOnAirDrawable:Landroid/graphics/drawable/Drawable;

.field private static sOnAirText:Ljava/lang/String;

.field private static sPadding:I

.field private static sPrivatePublicColor:I

.field private static sPrivateText:Ljava/lang/String;

.field private static sPublicText:Ljava/lang/String;

.field private static sSecondaryPadding:I

.field private static sTypeSize:F


# instance fields
.field private mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

.field private mChevronResId:I

.field private mDateView:Landroid/widget/TextView;

.field private mEndDateView:Landroid/widget/TextView;

.field private mExpandCollapseChevronView:Landroid/widget/ImageView;

.field private mExpandCollapseTextView:Landroid/widget/TextView;

.field private mExpandCollapseView:Landroid/view/View;

.field private mOnAirWrap:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mStartDateView:Landroid/widget/TextView;

.field private mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTypeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0x8

    const v6, 0x7f0a0098

    const/4 v5, 0x1

    const v4, 0x7f0d010f

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    sget-boolean v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sInitialized:Z

    if-nez v1, :cond_91

    .line 79
    sput-boolean v5, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sInitialized:Z

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    .line 83
    sget v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    int-to-float v1, v1

    const v2, 0x7f0d010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarOverlap:I

    .line 85
    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    .line 86
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sSecondaryPadding:I

    .line 88
    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sOnAirText:Ljava/lang/String;

    .line 89
    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sOnAirColor:I

    .line 90
    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPrivateText:Ljava/lang/String;

    .line 91
    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPublicText:Ljava/lang/String;

    .line 92
    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPrivatePublicColor:I

    .line 93
    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sTypeSize:F

    .line 94
    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sOnAirDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    const v1, 0x7f08021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sExpandText:Ljava/lang/String;

    .line 97
    const v1, 0x7f08021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sCollapseText:Ljava/lang/String;

    .line 100
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .restart local v0       #res:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/views/EventThemeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/plus/views/EventThemeView;->setFadeIn(Z)V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 106
    new-instance v1, Lcom/google/android/apps/plus/views/AvatarView;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/plus/views/AvatarView;->setRounded(Z)V

    .line 108
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 111
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0d010e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 126
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 135
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 144
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    const v2, 0x7f020197

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    const v1, 0x7f020197

    iput v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mChevronResId:I

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 149
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 157
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 160
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    const v2, 0x7f0d010e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0097

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sExpandText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 169
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/api/services/plusi/model/PlusEvent;Landroid/view/View$OnClickListener;ZLcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 12
    .parameter "event"
    .parameter "expandCollapseListener"
    .parameter "isCardLayout"
    .parameter "actionListener"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 368
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->setEventTheme(Lcom/google/api/services/plusi/model/Theme;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v4, p1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDateRange(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {v0, v3, v5}, Lcom/google/android/apps/plus/util/EventDateUtils;->getStartDisplayLine(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {v0, v3, v5}, Lcom/google/android/apps/plus/util/EventDateUtils;->getEndDisplayLine(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->removeView(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->removeView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->removeView(Landroid/view/View;)V

    .line 386
    if-eqz p2, :cond_6f

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 390
    if-eqz p3, :cond_6f

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->addView(Landroid/view/View;)V

    .line 395
    :cond_6f
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 396
    iput-object p4, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 398
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v0, :cond_b6

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventOptions;->broadcast:Ljava/lang/Boolean;

    if-eqz v0, :cond_b6

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventOptions;->broadcast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    sget-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sOnAirText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sOnAirColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    sget-object v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sOnAirDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    :goto_a1
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sTypeSize:F

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 415
    return-void

    .line 374
    :cond_a9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    invoke-static {v0, v3, v5}, Lcom/google/android/apps/plus/util/EventDateUtils;->getSingleDisplayLine(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_b4
    move-object v0, v1

    .line 378
    goto :goto_4a

    .line 404
    :cond_b6
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_de

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_db

    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPublicText:Ljava/lang/String;

    :goto_c6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPrivatePublicColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a1

    .line 405
    :cond_db
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPrivateText:Ljava/lang/String;

    goto :goto_c6

    .line 410
    :cond_de
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 428
    instance-of v0, p1, Lcom/google/android/apps/plus/views/AvatarView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_14

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    check-cast p1, Lcom/google/android/apps/plus/views/AvatarView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/AvatarView;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onAvatarClicked(Ljava/lang/String;)V

    .line 433
    :cond_13
    :goto_13
    return-void

    .line 430
    .restart local p1
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_13

    .line 431
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_13
.end method

.method protected onLayout(ZIIII)V
    .registers 36
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getMeasuredWidth()I

    move-result v25

    .line 280
    .local v25, width:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x40570a3d

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    .line 281
    .local v21, themeHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/EventThemeView;->layout(IIII)V

    .line 283
    sget v5, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    .line 284
    .local v5, avatarX:I
    sget v26, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarOverlap:I

    sub-int v6, v21, v26

    .line 285
    .local v6, avatarY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    move-object/from16 v26, v0

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    add-int v27, v27, v5

    sget v28, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    add-int v28, v28, v6

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/google/android/apps/plus/views/AvatarView;->layout(IIII)V

    .line 287
    sget v26, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    add-int v26, v26, v27

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    add-int v20, v26, v27

    .line 289
    .local v20, textX:I
    sget v26, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    add-int v22, v21, v26

    .line 290
    .local v22, topInfoY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v22

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v22

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    add-int v9, v26, v27

    .line 296
    .local v9, dateY:I
    const/4 v7, 0x0

    .line 297
    .local v7, dateHeight:I
    const/4 v8, 0x0

    .line 299
    .local v8, dateWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20e

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v20, v8

    add-int v28, v9, v7

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 325
    :cond_e9
    :goto_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getVisibility()I

    move-result v26

    if-nez v26, :cond_154

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v22

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v28

    sub-int v28, v7, v28

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    add-int v24, v26, v27

    .line 329
    .local v24, typeY:I
    add-int v26, v20, v8

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    add-int v23, v26, v27

    .line 331
    .local v23, typeX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    move/from16 v26, v0

    if-eqz v26, :cond_129

    .line 332
    add-int v24, v9, v7

    .line 333
    move/from16 v23, v20

    .line 336
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v24

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 340
    .end local v23           #typeX:I
    .end local v24           #typeY:I
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20d

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v13

    .line 343
    .local v13, expandCollapseHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getBaseline()I

    move-result v26

    add-int v26, v26, v22

    sub-int v15, v26, v13

    .line 344
    .local v15, expandCollapseY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v25, v26

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sSecondaryPadding:I

    sub-int v14, v26, v27

    .line 347
    .local v14, expandCollapseX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v14

    add-int v28, v15, v13

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v14, v26

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    sub-int v16, v26, v27

    .line 355
    .local v16, expandTextLeft:I
    move/from16 v17, v22

    .line 356
    .local v17, expandTextTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v17

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    move-object/from16 v26, v0

    sget v27, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    sget v28, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    add-int v29, v29, v21

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 364
    .end local v13           #expandCollapseHeight:I
    .end local v14           #expandCollapseX:I
    .end local v15           #expandCollapseY:I
    .end local v16           #expandTextLeft:I
    .end local v17           #expandTextTop:I
    :cond_20d
    return-void

    .line 306
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    .line 307
    .local v18, startDateHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    .line 308
    .local v19, startDateWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v20, v19

    add-int v28, v9, v18

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 310
    move/from16 v8, v19

    .line 311
    move/from16 v7, v18

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_e9

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    .line 315
    .local v10, endDateHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    .line 316
    .local v11, endDateWidth:I
    add-int v12, v9, v18

    .line 317
    .local v12, endDateY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v20, v11

    add-int v28, v12, v10

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 320
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 321
    add-int/2addr v7, v10

    goto/16 :goto_e9
.end method

.method protected onMeasure(II)V
    .registers 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 177
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 180
    .local v9, width:I
    if-nez v9, :cond_d

    .line 181
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 184
    :cond_d
    int-to-float v11, v9

    const v12, 0x40570a3d

    div-float/2addr v11, v12

    float-to-int v5, v11

    .line 185
    .local v5, themeHeight:I
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    const/high16 v12, 0x4000

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/plus/views/EventThemeView;->measure(II)V

    .line 188
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    sget v12, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    sget v13, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/plus/views/AvatarView;->measure(II)V

    .line 191
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/AvatarView;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v9, v12

    sget v13, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    sget v13, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sSecondaryPadding:I

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 194
    .local v3, maxTextWidth:I
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v11, :cond_73

    .line 195
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/ImageView;->measure(II)V

    .line 199
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    sget v13, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    add-int/2addr v12, v13

    sub-int v12, v3, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 203
    :cond_73
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    const/high16 v12, -0x8000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 206
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 208
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 209
    .local v1, dateWidth:I
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 211
    .local v0, dateHeight:I
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    if-le v11, v3, :cond_1d3

    const/4 v10, 0x1

    .line 213
    .local v10, wrappingDate:Z
    :goto_a9
    iget-object v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    if-eqz v10, :cond_1d6

    const/16 v11, 0x8

    :goto_af
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    if-eqz v10, :cond_1d9

    const/4 v11, 0x0

    :goto_b7
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    if-eqz v10, :cond_1dd

    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_1dd

    const/4 v11, 0x0

    :goto_cb
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    if-eqz v10, :cond_119

    .line 219
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    const/high16 v12, 0x4000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 221
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 222
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mStartDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 224
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_119

    .line 225
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    const/high16 v12, 0x4000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 227
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 228
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mEndDateView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v0, v11

    .line 232
    :cond_119
    if-eqz v10, :cond_1e1

    const/4 v7, 0x0

    .line 234
    .local v7, typeViewMaxWidth:I
    :goto_11c
    const/4 v8, 0x0

    .line 235
    .local v8, typeViewWidth:I
    const/4 v6, 0x0

    .line 236
    .local v6, typeViewHeight:I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    .line 238
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_16b

    .line 239
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 243
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    if-le v11, v7, :cond_1ed

    const/4 v11, 0x1

    :goto_144
    iput-boolean v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    .line 246
    iget-boolean v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    if-eqz v11, :cond_15b

    .line 247
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    const/high16 v12, -0x8000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 252
    :cond_15b
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    sget v12, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    add-int v8, v11, v12

    .line 253
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 256
    :cond_16b
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    iget-boolean v13, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    if-eqz v13, :cond_177

    const/4 v8, 0x0

    .end local v8           #typeViewWidth:I
    :cond_177
    add-int v13, v8, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    sub-int v12, v3, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 259
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    const/high16 v12, -0x8000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 262
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    iget-boolean v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    if-eqz v11, :cond_1f0

    const/4 v11, 0x0

    :goto_19f
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v11, v12

    iget-boolean v12, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnAirWrap:Z

    if-eqz v12, :cond_1f2

    .end local v6           #typeViewHeight:I
    :goto_1a8
    add-int/2addr v11, v6

    sget v12, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    add-int v4, v11, v12

    .line 267
    .local v4, textInfoHeight:I
    sget v11, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    sget v12, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarOverlap:I

    sub-int/2addr v11, v12

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int v2, v5, v11

    .line 269
    .local v2, height:I
    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseView:Landroid/view/View;

    sget v12, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sAvatarSize:I

    sub-int v12, v9, v12

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    sub-int v13, v2, v5

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 273
    invoke-virtual {p0, v9, v2}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->setMeasuredDimension(II)V

    .line 274
    return-void

    .line 211
    .end local v2           #height:I
    .end local v4           #textInfoHeight:I
    .end local v7           #typeViewMaxWidth:I
    .end local v10           #wrappingDate:Z
    :cond_1d3
    const/4 v10, 0x0

    goto/16 :goto_a9

    .line 213
    .restart local v10       #wrappingDate:Z
    :cond_1d6
    const/4 v11, 0x0

    goto/16 :goto_af

    .line 214
    :cond_1d9
    const/16 v11, 0x8

    goto/16 :goto_b7

    .line 215
    :cond_1dd
    const/16 v11, 0x8

    goto/16 :goto_cb

    .line 232
    :cond_1e1
    const/4 v11, 0x0

    sub-int v12, v3, v1

    sget v13, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sPadding:I

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_11c

    .line 243
    .restart local v6       #typeViewHeight:I
    .restart local v7       #typeViewMaxWidth:I
    .restart local v8       #typeViewWidth:I
    :cond_1ed
    const/4 v11, 0x0

    goto/16 :goto_144

    .end local v8           #typeViewWidth:I
    :cond_1f0
    move v11, v6

    .line 262
    goto :goto_19f

    :cond_1f2
    const/4 v6, 0x0

    goto :goto_1a8
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventThemeView;->onRecycle()V

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 424
    return-void
.end method

.method public setEventTheme(Lcom/google/api/services/plusi/model/Theme;)V
    .registers 3
    .parameter "theme"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mThemeImageView:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/EventThemeView;->setEventTheme(Lcom/google/api/services/plusi/model/Theme;)V

    .line 173
    return-void
.end method

.method public setExpandState(Z)V
    .registers 4
    .parameter "expanded"

    .prologue
    .line 436
    if-eqz p1, :cond_21

    const v0, 0x7f020199

    :goto_5
    iput v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mChevronResId:I

    .line 439
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_25

    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sCollapseText:Ljava/lang/String;

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseChevronView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mChevronResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_20

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/views/EventActionListener;->onExpansionToggled(Z)V

    .line 445
    :cond_20
    return-void

    .line 436
    :cond_21
    const v0, 0x7f020197

    goto :goto_5

    .line 439
    :cond_25
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->sExpandText:Ljava/lang/String;

    goto :goto_d
.end method

.method public setLayoutType(Z)V
    .registers 4
    .parameter "cardLayout"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->mExpandCollapseTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    return-void

    .line 451
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
