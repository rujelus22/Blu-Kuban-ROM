.class public Lcom/google/android/apps/plus/views/EventDetailsMainLayout;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "EventDetailsMainLayout.java"


# static fields
.field private static sDescriptionFontColor:I

.field private static sDescriptionFontSize:F

.field private static sDividerPaint:Landroid/graphics/Paint;

.field private static sInitialized:Z

.field private static sPadding:I


# instance fields
.field private mDescriptionView:Landroid/widget/TextView;

.field private mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

.field private mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private measureRow(Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;IIIZ)I
    .registers 9
    .parameter "layout"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "first"

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_18

    .line 137
    invoke-virtual {p1, p5}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setFirst(Z)V

    .line 138
    const/high16 v1, -0x8000

    invoke-static {p1, p4, v1, v0, v0}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->measure(Landroid/view/View;IIII)V

    .line 139
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->setCorner(Landroid/view/View;II)V

    .line 140
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->getMeasuredHeight()I

    move-result v0

    .line 142
    :cond_18
    return v0
.end method

.method private varargs measureRows(III[Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;)I
    .registers 16
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "layouts"

    .prologue
    .line 109
    const/4 v6, 0x0

    .line 110
    .local v6, height:I
    array-length v9, p4

    .line 111
    .local v9, layoutCount:I
    const/4 v5, 0x1

    .line 113
    .local v5, first:Z
    const/4 v10, 0x0

    .line 114
    .local v10, visibleRow:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    if-ge v7, v9, :cond_17

    .line 115
    if-nez v10, :cond_11

    aget-object v0, p4, v7

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    :cond_11
    const/4 v10, 0x1

    .line 114
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 115
    :cond_15
    const/4 v10, 0x0

    goto :goto_12

    .line 118
    :cond_17
    if-eqz v10, :cond_21

    if-nez v5, :cond_21

    .line 119
    sget v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    add-int/2addr p2, v0

    .line 120
    sget v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    add-int/2addr v6, v0

    .line 123
    :cond_21
    const/4 v7, 0x0

    :goto_22
    if-ge v7, v9, :cond_3a

    .line 124
    aget-object v1, p4, v7

    .local v1, layout:Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 125
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->measureRow(Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;IIIZ)I

    move-result v8

    .line 126
    .local v8, individualHeight:I
    add-int/2addr v6, v8

    .line 127
    add-int/2addr p2, v8

    .line 128
    if-eqz v5, :cond_38

    if-nez v8, :cond_38

    const/4 v5, 0x1

    .line 123
    :goto_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 128
    :cond_38
    const/4 v5, 0x0

    goto :goto_35

    .line 131
    .end local v1           #layout:Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;
    .end local v8           #individualHeight:I
    :cond_3a
    return v6
.end method


# virtual methods
.method public bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/fragments/EventActiveState;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 8
    .parameter "event"
    .parameter "state"
    .parameter "listener"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 151
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    if-nez v0, :cond_25

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->hangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;

    if-eqz v0, :cond_66

    .line 165
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->setVisibility(I)V

    .line 171
    :goto_2f
    iget-boolean v0, p2, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareAvailable:Z

    if-nez v0, :cond_37

    iget-boolean v0, p2, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareExpired:Z

    if-eqz v0, :cond_6c

    .line 172
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setListener(Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->bind(Lcom/google/android/apps/plus/fragments/EventActiveState;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setVisibility(I)V

    .line 178
    :goto_46
    return-void

    .line 153
    :cond_47
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->displayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/google/api/services/plusi/model/PlusEvent;->displayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;->descriptionHtml:Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/api/services/plusi/model/PlusEvent;->displayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEventDisplayContent;->descriptionHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 157
    :cond_5f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 168
    :cond_66
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->setVisibility(I)V

    goto :goto_2f

    .line 176
    :cond_6c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setVisibility(I)V

    goto :goto_46
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->clear()V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->clear()V

    .line 183
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 55
    sget-boolean v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sInitialized:Z

    if-nez v0, :cond_46

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 58
    .local v7, resources:Landroid/content/res/Resources;
    const v0, 0x7f0d0110

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDescriptionFontSize:F

    .line 60
    const v0, 0x7f0a0099

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDescriptionFontColor:I

    .line 63
    const v0, 0x7f0d0103

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDividerPaint:Landroid/graphics/Paint;

    .line 66
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDividerPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a013e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDividerPaint:Landroid/graphics/Paint;

    const v1, 0x7f0d0105

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sInitialized:Z

    .line 73
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_46
    sget v3, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDescriptionFontSize:F

    sget v4, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sDescriptionFontColor:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/views/TextViewUtils;->createText(Landroid/content/Context;Landroid/util/AttributeSet;IFIZZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setId(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method protected measureChildren(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x0

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 88
    .local v7, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 90
    .local v3, height:I
    const/4 v4, 0x0

    .line 91
    .local v4, left:I
    const/4 v0, 0x0

    .line 92
    .local v0, currentTop:I
    sget v8, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    add-int v5, v4, v8

    .line 93
    .local v5, paddedLeft:I
    sget v8, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    .line 95
    .local v6, paddedWidth:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 96
    move v2, v0

    .line 97
    .local v2, descriptionTop:I
    add-int/lit8 v1, v3, 0x0

    .line 98
    .local v1, descriptionMaxHeight:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    sget v9, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    sub-int v9, v6, v9

    const/high16 v10, -0x8000

    invoke-static {v8, v9, v10, v1, v11}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->measure(Landroid/view/View;IIII)V

    .line 100
    iget-object v8, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    sget v9, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    add-int/2addr v9, v5

    invoke-static {v8, v9, v2}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->setCorner(Landroid/view/View;II)V

    .line 102
    iget-object v8, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sget v9, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->sPadding:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 105
    .end local v1           #descriptionMaxHeight:I
    .end local v2           #descriptionTop:I
    :cond_41
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mInstantShareRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->mLocationRow:Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;

    aput-object v10, v8, v9

    invoke-direct {p0, v4, v0, v7, v8}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->measureRows(III[Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;)I

    move-result v8

    add-int/2addr v0, v8

    .line 106
    return-void
.end method
