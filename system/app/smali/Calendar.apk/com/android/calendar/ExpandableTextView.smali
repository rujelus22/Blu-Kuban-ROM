.class public Lcom/android/calendar/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mButton:Landroid/widget/ImageButton;

.field private mCollapseDrawable:Landroid/graphics/drawable/Drawable;

.field private mCollapsed:Z

.field private mExpandDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxCollapsedLines:I

.field private mRelayout:Z

.field mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mRelayout:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mRelayout:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mRelayout:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    .line 51
    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->init()V

    .line 52
    return-void
.end method

.method private findViews()V
    .registers 2

    .prologue
    .line 105
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Lcom/android/calendar/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f100091

    invoke-virtual {p0, v0}, Lcom/android/calendar/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    .line 108
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    if-nez v0, :cond_7

    .line 123
    const-string v0, ""

    .line 125
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method init()V
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    :goto_8
    return-void

    .line 66
    :cond_9
    iget-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    .line 67
    iget-object v1, p0, Lcom/android/calendar/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v1, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_8

    .line 66
    :cond_27
    const/4 v0, 0x0

    goto :goto_e

    .line 67
    :cond_29
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_18

    .line 68
    :cond_2c
    const v0, 0x7fffffff

    goto :goto_23
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mRelayout:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/calendar/ExpandableTextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 75
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    :cond_10
    :goto_10
    return-void

    .line 78
    :cond_11
    iput-boolean v2, p0, Lcom/android/calendar/ExpandableTextView;->mRelayout:Z

    .line 82
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 89
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    if-le v0, v1, :cond_10

    .line 95
    iget-boolean v0, p0, Lcom/android/calendar/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_38

    .line 96
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/ExpandableTextView;->mMaxCollapsedLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 98
    :cond_38
    iget-object v0, p0, Lcom/android/calendar/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_10
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/ExpandableTextView;->mRelayout:Z

    .line 113
    iget-object v1, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 114
    invoke-direct {p0}, Lcom/android/calendar/ExpandableTextView;->findViews()V

    .line 116
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, trimmedText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    const/16 v1, 0x8

    :goto_1b
    invoke-virtual {p0, v1}, Lcom/android/calendar/ExpandableTextView;->setVisibility(I)V

    .line 119
    return-void

    .line 118
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method
