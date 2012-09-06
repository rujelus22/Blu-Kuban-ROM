.class public Lcom/google/android/apps/plus/views/EventDestinationCardView;
.super Lcom/google/android/apps/plus/views/CardView;
.source "EventDestinationCardView.java"


# instance fields
.field private mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

.field private mEvent:Lcom/google/api/services/plusi/model/PlusEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/EventCardDrawer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->setPaddingEnabled(Z)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->setFocusable(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public bindData(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)V
    .registers 5
    .parameter "account"
    .parameter "event"

    .prologue
    .line 51
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/google/android/apps/plus/views/EventCardDrawer;->bind(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/CardView;Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    .line 53
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    add-int v3, p2, p4

    add-int v4, p3, p5

    move v1, p2

    move v2, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->draw(IIIILandroid/graphics/Canvas;)I

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 12

    .prologue
    const v10, 0x7f080468

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, res:Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v6, v6, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDateRange(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, startTimeText:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    if-eqz v5, :cond_49

    .line 109
    const v6, 0x7f080467

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->name:Ljava/lang/String;

    :goto_40
    aput-object v5, v7, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, locationText:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 115
    .end local v0           #locationText:Ljava/lang/String;
    :cond_49
    const/4 v2, 0x0

    .line 116
    .local v2, rsvpText:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpStatus(Lcom/google/api/services/plusi/model/PlusEvent;)I

    move-result v5

    packed-switch v5, :pswitch_data_9a

    .line 134
    :goto_53
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 109
    .end local v2           #rsvpText:Ljava/lang/String;
    :cond_5b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    goto :goto_40

    .line 118
    .restart local v2       #rsvpText:Ljava/lang/String;
    :pswitch_62
    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f08012a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 120
    goto :goto_53

    .line 122
    :pswitch_72
    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f08012c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    goto :goto_53

    .line 126
    :pswitch_82
    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f08012b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    goto :goto_53

    .line 130
    :pswitch_92
    const v5, 0x7f080129

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    .line 116
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_92
        :pswitch_62
        :pswitch_82
        :pswitch_72
    .end packed-switch
.end method

.method public getEvent()Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    return-object v0
.end method

.method protected layoutElements(IIII)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layout(IIII)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardView;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->attach()V

    .line 84
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardView;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->detach()V

    .line 90
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 58
    .local v3, widthDimension:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 59
    .local v1, heightDimensionArg:I
    if-gtz v1, :cond_34

    const/4 v4, 0x1

    .line 60
    .local v4, wrapContent:Z
    :goto_b
    if-eqz v4, :cond_36

    move v0, v3

    .line 62
    .local v0, heightDimension:I
    :goto_e
    sget v5, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sLeftBorderPadding:I

    sget v6, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sTopBorderPadding:I

    sget v7, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sLeftBorderPadding:I

    sget v8, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sRightBorderPadding:I

    add-int/2addr v7, v8

    sub-int v7, v3, v7

    sget v8, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sTopBorderPadding:I

    sget v9, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sBottomBorderPadding:I

    add-int/2addr v8, v9

    sub-int v8, v0, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->layoutElements(IIII)I

    move-result v2

    .line 66
    .local v2, measuredHeight:I
    if-eqz v4, :cond_30

    sget v5, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sTopBorderPadding:I

    add-int/2addr v5, v2

    sget v6, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sBottomBorderPadding:I

    add-int/2addr v5, v6

    sget v6, Lcom/google/android/apps/plus/views/EventDestinationCardView;->sYPadding:I

    add-int v0, v5, v6

    .end local v0           #heightDimension:I
    :cond_30
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->setMeasuredDimension(II)V

    .line 68
    return-void

    .line 59
    .end local v2           #measuredHeight:I
    .end local v4           #wrapContent:Z
    :cond_34
    const/4 v4, 0x0

    goto :goto_b

    .restart local v4       #wrapContent:Z
    :cond_36
    move v0, v1

    .line 60
    goto :goto_e
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardView;->onRecycle()V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->clear()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventDestinationCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 48
    return-void
.end method
