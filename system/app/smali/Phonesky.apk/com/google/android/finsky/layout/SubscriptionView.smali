.class public Lcom/google/android/finsky/layout/SubscriptionView;
.super Landroid/widget/RelativeLayout;
.source "SubscriptionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;,
        Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

.field private mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

.field private mDescriptionCollapser:Landroid/view/View;

.field private mDescriptionExpander:Landroid/view/View;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mExpansionState:I

.field private final mHalfSeparatorThickness:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSeparatorThickness:I

.field private mShowsBottomSeparator:Z

.field private mShowsTopSeparator:Z

.field private mSubscriptionDescription:Landroid/widget/TextView;

.field private mSubscriptionPrice:Landroid/widget/TextView;

.field private mSubscriptionRenewal:Landroid/widget/TextView;

.field private mSubscriptionStatus:Landroid/widget/TextView;

.field private mSubscriptionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SubscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorThickness:I

    .line 85
    iget v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorThickness:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mHalfSeparatorThickness:I

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorThickness:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mShowsTopSeparator:Z

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mShowsBottomSeparator:Z

    .line 93
    new-instance v1, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SubscriptionView;)Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SubscriptionView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/layout/SubscriptionView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SubscriptionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->collapseDescription()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/SubscriptionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->expandDescription()V

    return-void
.end method

.method private collapseDescription()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 284
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    return-void
.end method

.method private expandDescription()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    return-void
.end method

.method public static fillSubscriptionDateInfo(Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Landroid/content/res/Resources;)V
    .registers 12
    .parameter "info"
    .parameter "subscriptionDetails"
    .parameter "res"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, now:J
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->validUntilTimestampMs:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, validUntil:Ljava/lang/String;
    iget-boolean v4, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    if-eqz v4, :cond_60

    .line 148
    iget-wide v4, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_3f

    .line 149
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, trialUntil:Ljava/lang/String;
    const v4, 0x7f07013b

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    .line 153
    const v4, 0x7f070142

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    .line 166
    .end local v2           #trialUntil:Ljava/lang/String;
    :goto_3c
    iput-boolean v8, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->canCancel:Z

    .line 173
    :goto_3e
    return-void

    .line 155
    :cond_3f
    iget-wide v4, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->validUntilTimestampMs:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_5c

    .line 156
    const v4, 0x7f07013c

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    .line 163
    :goto_56
    const v4, 0x7f070141

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    goto :goto_3c

    .line 161
    :cond_5c
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    goto :goto_56

    .line 168
    :cond_60
    const v4, 0x7f07013d

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    .line 170
    const v4, 0x7f070143

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    .line 171
    iput-boolean v7, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->canCancel:Z

    goto :goto_3e
.end method

.method public static getSubscriptionPriceDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 11
    .parameter "doc"
    .parameter "subscriptionOffer"
    .parameter "resources"

    .prologue
    const/4 v7, 0x1

    .line 112
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms()Z

    move-result v3

    if-nez v3, :cond_9

    .line 113
    const/4 v3, 0x0

    .line 132
    :goto_8
    return-object v3

    .line 115
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    move-result-object v0

    .line 116
    .local v0, offerTerms:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->getRecurringPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v2

    .line 117
    .local v2, subscriptionPeriod:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    const/4 v1, -0x1

    .line 118
    .local v1, periodId:I
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getUnit()I

    move-result v3

    packed-switch v3, :pswitch_data_42

    .line 132
    :goto_19
    const v3, 0x7f070136

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 120
    :pswitch_31
    const v1, 0x7f070137

    .line 121
    goto :goto_19

    .line 123
    :pswitch_35
    const v1, 0x7f070138

    .line 124
    goto :goto_19

    .line 126
    :pswitch_39
    const v1, 0x7f070139

    .line 127
    goto :goto_19

    .line 129
    :pswitch_3d
    const v1, 0x7f07013a

    goto :goto_19

    .line 118
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
    .end packed-switch
.end method

.method private hideDescription()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V
    .registers 15
    .parameter "doc"
    .parameter "subscriptionDetails"
    .parameter "cancelListener"
    .parameter "savedState"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 178
    iput-object p3, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

    .line 180
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 185
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v4

    if-eqz v4, :cond_b0

    .line 186
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSubscriptionPeriod()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ab

    const v0, 0x7f070139

    .line 189
    .local v0, periodId:I
    :goto_2d
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const v5, 0x7f070136

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v0           #periodId:I
    :goto_4d
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    invoke-static {v4, p2, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->fillSubscriptionDateInfo(Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Landroid/content/res/Resources;)V

    .line 208
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget-object v4, v4, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 209
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_76
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget v5, v5, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget-boolean v4, v4, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->canCancel:Z

    if-eqz v4, :cond_f5

    .line 216
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Landroid/widget/Button;

    const v5, 0x7f07013e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 217
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/google/android/finsky/layout/SubscriptionView$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/finsky/layout/SubscriptionView$1;-><init>(Lcom/google/android/finsky/layout/SubscriptionView;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :goto_9d
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 229
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->hideDescription()V

    .line 259
    :goto_aa
    return-void

    .line 186
    :cond_ab
    const v0, 0x7f07013a

    goto/16 :goto_2d

    .line 192
    :cond_b0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 193
    .local v2, subscriptionOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4, v2, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->getSubscriptionPriceDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, subscriptionPriceDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 196
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    .line 198
    :cond_cd
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    const-string v4, "Document for %s does not contain subscription details or terms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 211
    .end local v2           #subscriptionOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v3           #subscriptionPriceDescription:Ljava/lang/String;
    :cond_e5
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget-object v5, v5, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 225
    :cond_f5
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_9d

    .line 233
    :cond_fd
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    if-gez v4, :cond_115

    .line 236
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p4, v4, v5}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    .line 240
    :cond_115
    iget v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_126

    .line 241
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->expandDescription()V

    .line 247
    :goto_11d
    new-instance v4, Lcom/google/android/finsky/layout/SubscriptionView$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/SubscriptionView$2;-><init>(Lcom/google/android/finsky/layout/SubscriptionView;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SubscriptionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_aa

    .line 243
    :cond_126
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->collapseDescription()V

    goto :goto_11d
.end method

.method public hideBottomSeparator()V
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mShowsBottomSeparator:Z

    .line 263
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->invalidate()V

    .line 264
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getWidth()I

    move-result v9

    .line 299
    .local v9, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getHeight()I

    move-result v7

    .line 301
    .local v7, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mShowsBottomSeparator:Z

    if-eqz v0, :cond_1a

    .line 302
    iget v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mHalfSeparatorThickness:I

    sub-int v6, v7, v0

    .line 303
    .local v6, bottomY:I
    int-to-float v2, v6

    int-to-float v3, v9

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 306
    .end local v6           #bottomY:I
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mShowsTopSeparator:Z

    if-eqz v0, :cond_29

    .line 307
    iget v8, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mHalfSeparatorThickness:I

    .line 308
    .local v8, topY:I
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    .end local v8           #topY:I
    :cond_29
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 100
    const v0, 0x7f08020c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionTitle:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f08020e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionStatus:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f080210

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Landroid/widget/Button;

    .line 105
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    .line 107
    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    .line 108
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, docId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 292
    iget v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 294
    :cond_11
    return-void
.end method

.method public showTopSeparator()V
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mShowsTopSeparator:Z

    .line 268
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->invalidate()V

    .line 269
    return-void
.end method
