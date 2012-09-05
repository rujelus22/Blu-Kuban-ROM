.class public Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;
.super Ljava/lang/Object;
.source "DetailsSummaryPlusOneViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$2;,
        Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

.field private static final sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCookie:Ljava/lang/String;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mIsWaitingServerResponse:Z

.field private mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

.field private mLayout:Landroid/view/View;

.field private mUrl:Ljava/lang/String;

.field private mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    .line 58
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->handleClick()V

    return-void
.end method

.method private bindPlusOneButton()V
    .registers 5

    .prologue
    .line 118
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v0

    .line 119
    .local v0, isPlusOne:Z
    if-eqz v0, :cond_21

    sget-object v2, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    :goto_a
    iput-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 120
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncButtonState()V

    .line 122
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, plusOneBar:Landroid/view/View;
    new-instance v2, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void

    .line 119
    .end local v1           #plusOneBar:Landroid/view/View;
    :cond_21
    sget-object v2, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    goto :goto_a
.end method

.method private bindPlusOneLegend()V
    .registers 16

    .prologue
    const v14, 0x7f0701f5

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 192
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v12, 0x7f0800ea

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 193
    .local v6, legendView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    sget-object v12, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    if-ne v9, v12, :cond_1d

    .line 194
    const v9, 0x7f0701ed

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 256
    :goto_1c
    return-void

    .line 198
    :cond_1d
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    sget-object v12, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    if-ne v9, v12, :cond_39

    move v5, v10

    .line 199
    .local v5, isSetByUser:Z
    :goto_24
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v7

    .line 202
    .local v7, totalCount:J
    const-wide/16 v12, 0x0

    cmp-long v9, v7, v12

    if-nez v9, :cond_3b

    if-nez v5, :cond_3b

    .line 203
    const v9, 0x7f0701ee

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .end local v5           #isSetByUser:Z
    .end local v7           #totalCount:J
    :cond_39
    move v5, v11

    .line 198
    goto :goto_24

    .line 208
    .restart local v5       #isSetByUser:Z
    .restart local v7       #totalCount:J
    :cond_3b
    const-wide/16 v12, 0x1

    cmp-long v9, v7, v12

    if-nez v9, :cond_4a

    if-eqz v5, :cond_4a

    .line 209
    const v9, 0x7f0701ef

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .line 213
    :cond_4a
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesPeopleCount()I

    move-result v0

    .line 214
    .local v0, countInCircles:I
    if-nez v0, :cond_6e

    .line 217
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v9, v7, v8, v14}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, formattedTotalCount:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0d0002

    long-to-int v13, v7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v11

    invoke-virtual {v9, v12, v13, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, formattedLegend:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 228
    .end local v3           #formattedLegend:Ljava/lang/String;
    .end local v4           #formattedTotalCount:Ljava/lang/String;
    :cond_6e
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesPeopleList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, firstPersonInCircles:Ljava/lang/String;
    if-ne v0, v10, :cond_97

    if-nez v5, :cond_97

    .line 232
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0701f0

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {v9, v12, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 238
    :cond_97
    if-ne v0, v10, :cond_b1

    if-eqz v5, :cond_b1

    .line 239
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0701f1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {v9, v12, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 247
    :cond_b1
    add-int/lit8 v0, v0, -0x1

    .line 248
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    int-to-long v12, v0

    invoke-static {v9, v12, v13, v14}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, formattedCircleCount:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0d0003

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v11

    aput-object v2, v13, v10

    invoke-virtual {v9, v12, v0, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .restart local v3       #formattedLegend:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c
.end method

.method public static formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "number"
    .parameter "formatterId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x447a

    .line 267
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_20

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 286
    :goto_1f
    return-object v3

    .line 271
    :cond_20
    long-to-float v0, p1

    .line 272
    .local v0, result:F
    const v1, 0x7f0701f3

    .line 273
    .local v1, suffix:I
    div-float/2addr v0, v5

    .line 275
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2d

    .line 276
    const v1, 0x7f0701f4

    .line 277
    div-float/2addr v0, v5

    .line 280
    :cond_2d
    const/high16 v3, 0x4120

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4d

    .line 281
    sget-object v3, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, value:Ljava/lang/String;
    :goto_3a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    .line 283
    .end local v2           #value:Ljava/lang/String;
    :cond_4d
    sget-object v3, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_3a
.end method

.method private getAnalyticsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plusOne?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCookie:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->getAnalyticsString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v3

    if-nez v3, :cond_5b

    move v0, v1

    .line 142
    .local v0, setPlusOne:Z
    :goto_20
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    if-eqz v3, :cond_3d

    .line 143
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 144
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 145
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setSetByUser(Z)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 151
    :cond_3d
    :goto_3d
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->setLoading(Z)V

    .line 152
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    :goto_4a
    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 153
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncButtonState()V

    .line 154
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 155
    return-void

    .end local v0           #setPlusOne:Z
    :cond_5b
    move v0, v2

    .line 138
    goto :goto_20

    .line 147
    .restart local v0       #setPlusOne:Z
    :cond_5d
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 148
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setSetByUser(Z)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_3d

    .line 152
    :cond_6f
    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    goto :goto_4a
.end method

.method private setLoading(Z)V
    .registers 4
    .parameter "isLoading"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void

    .line 187
    :cond_14
    const/16 v0, 0x8

    goto :goto_10
.end method

.method private syncButtonState()V
    .registers 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, plusOneButton:Landroid/widget/ImageView;
    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$2;->$SwitchMap$com$google$android$finsky$activities$DetailsSummaryPlusOneViewBinder$PlusOneButtonState:[I

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 109
    :goto_18
    return-void

    .line 99
    :pswitch_19
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    if-eqz v1, :cond_24

    const v1, 0x7f020072

    :goto_20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_18

    :cond_24
    const v1, 0x7f020071

    goto :goto_20

    .line 103
    :pswitch_28
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    if-eqz v1, :cond_33

    const v1, 0x7f020070

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_18

    :cond_33
    const v1, 0x7f02006f

    goto :goto_2f

    .line 107
    :pswitch_37
    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_18

    .line 97
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_28
        :pswitch_37
    .end packed-switch
.end method

.method private syncContentDescription()V
    .registers 5

    .prologue
    .line 112
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, plusOneBar:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, legendView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 6
    .parameter "view"
    .parameter "document"
    .parameter "hasDetailsLoaded"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    .line 75
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 77
    if-eqz p3, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasPlusOneData()Z

    move-result v0

    if-nez v0, :cond_16

    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_15
    return-void

    .line 80
    :cond_16
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->rebindViews()V

    goto :goto_15
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "dfeApi"
    .parameter "url"
    .parameter "cookie"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 69
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCookie:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    .line 264
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->setLoading(Z)V

    .line 176
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 177
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncButtonState()V

    .line 178
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneLegend()V

    .line 179
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncContentDescription()V

    .line 182
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->setLoading(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->rebindViews()V

    .line 166
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)V

    return-void
.end method

.method public rebindViews()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLastPlusOne:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    if-eqz v0, :cond_d

    .line 88
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneButton()V

    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneLegend()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncContentDescription()V

    .line 92
    :cond_d
    return-void
.end method
