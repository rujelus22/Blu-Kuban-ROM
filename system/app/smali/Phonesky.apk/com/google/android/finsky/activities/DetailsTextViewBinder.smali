.class public Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsTextViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;
    }
.end annotation


# instance fields
.field private mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

.field private mContentView:Landroid/widget/TextView;

.field private mDefaultMaxLines:I

.field private mExpansionState:I

.field private mFooterIcon:Landroid/widget/ImageView;

.field private mFullHeight:I

.field private mShouldScrollWhenCollapsing:Z

.field private mTruncatedHeight:I

.field private mUrlSpanClicked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->configureContent()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->handleClick()V

    return-void
.end method

.method private collapseContent(Z)V
    .registers 10
    .parameter "isUserOperation"

    .prologue
    .line 228
    if-eqz p1, :cond_3c

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mShouldScrollWhenCollapsing:Z

    if-eqz v6, :cond_3c

    .line 233
    const/4 v5, 0x0

    .line 234
    .local v5, scrollParent:Lcom/google/android/finsky/layout/ObservableScrollView;
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    .line 235
    .local v0, contentTopOffset:I
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 237
    .local v3, parent:Landroid/view/View;
    :goto_15
    instance-of v6, v3, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v6, :cond_4a

    move-object v5, v3

    .line 238
    check-cast v5, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 249
    :cond_1c
    if-eqz v5, :cond_3c

    .line 250
    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getViewportTop()I

    move-result v1

    .line 253
    .local v1, currentViewportTop:I
    if-ge v0, v1, :cond_3c

    .line 255
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    if-ge v6, v7, :cond_5b

    .line 260
    iget v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    iget v7, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    sub-int v4, v6, v7

    .line 266
    .local v4, scrollDelta:I
    :goto_38
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->scrollBy(II)V

    .line 272
    .end local v0           #contentTopOffset:I
    .end local v1           #currentViewportTop:I
    .end local v3           #parent:Landroid/view/View;
    .end local v4           #scrollDelta:I
    .end local v5           #scrollParent:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_3c
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget v7, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 273
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showMoreIndicator()V

    .line 275
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 276
    return-void

    .line 241
    .restart local v0       #contentTopOffset:I
    .restart local v3       #parent:Landroid/view/View;
    .restart local v5       #scrollParent:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_4a
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v0, v6

    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 243
    .local v2, nextParent:Landroid/view/ViewParent;
    instance-of v6, v2, Landroid/view/View;

    if-eqz v6, :cond_1c

    move-object v3, v2

    .line 246
    check-cast v3, Landroid/view/View;

    .line 247
    goto :goto_15

    .line 264
    .end local v2           #nextParent:Landroid/view/ViewParent;
    .restart local v1       #currentViewportTop:I
    :cond_5b
    sub-int v4, v0, v1

    .restart local v4       #scrollDelta:I
    goto :goto_38
.end method

.method private configureContent()V
    .registers 3

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 181
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->expandContent()V

    .line 186
    :goto_8
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void

    .line 183
    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->collapseContent(Z)V

    goto :goto_8
.end method

.method private expandContent()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 223
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showLessIndicator()V

    .line 224
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 225
    return-void
.end method

.method private handleClick()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 207
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    if-eqz v0, :cond_d

    .line 209
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    .line 218
    :goto_c
    return-void

    .line 213
    :cond_d
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->collapseContent(Z)V

    goto :goto_c

    .line 216
    :cond_17
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->expandContent()V

    goto :goto_c
.end method

.method private selfishifyUrlSpans(Ljava/lang/CharSequence;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_6

    .line 136
    :cond_5
    return-void

    .line 128
    :cond_6
    check-cast p1, Landroid/text/Spannable;

    .line 129
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 130
    array-length v3, v0

    move v1, v2

    :goto_16
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 131
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 132
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 133
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 134
    new-instance v7, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, p0, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Ljava/lang/String;)V

    invoke-interface {p1, v7, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method private showLessIndicator()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    return-void
.end method

.method private showMoreIndicator()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 9
    .parameter "view"
    .parameter "doc"
    .parameter "headerStringId"
    .parameter "content"
    .parameter "savedState"

    .prologue
    const/4 v2, -0x1

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 74
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_11
    return-void

    .line 78
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsTextLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    .line 87
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->selfishifyUrlSpans(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iput v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    .line 92
    iput v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    .line 94
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    if-gez v0, :cond_68

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 99
    :cond_68
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setDefaultMaxLines(I)V

    .line 100
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7f

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showLessIndicator()V

    .line 104
    :cond_7f
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setMetricsListener(Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;)V

    goto :goto_11
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V
    .registers 11
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "defaultMaxLines"

    .prologue
    .line 61
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V

    .line 62
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V
    .registers 6
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "defaultMaxLines"
    .parameter "shouldScrollWhenCollapsing"

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 66
    iput p4, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    .line 67
    iput-boolean p5, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mShouldScrollWhenCollapsing:Z

    .line 68
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 295
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 283
    :cond_13
    return-void
.end method

.method public setDefaultMaxLines(I)V
    .registers 3
    .parameter "defaultMaxLines"

    .prologue
    .line 286
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    if-eqz v0, :cond_b

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setDefaultMaxLines(I)V

    .line 290
    :cond_b
    return-void
.end method
