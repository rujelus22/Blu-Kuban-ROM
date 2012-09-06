.class public Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;
.super Lcom/google/android/apps/plus/views/CardViewLayout;
.source "EventActivityUpdateCardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sAvatarMarginLeft:I

.field private static sAvatarMarginTop:I

.field private static sAvatarSize:I

.field private static sDescriptionMarginBottom:I

.field private static sDescriptionMarginLeft:I

.field private static sDescriptionMarginRight:I

.field private static sDescriptionTopAvatarHeightPercentage:F

.field private static sInitialized:Z


# instance fields
.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

.field private mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/apps/plus/views/EventUpdate;Lcom/google/android/apps/plus/views/EventActionListener;Z)V
    .registers 9
    .parameter "update"
    .parameter "listener"
    .parameter "ellipsize"

    .prologue
    .line 135
    if-nez p1, :cond_3

    .line 150
    :goto_2
    return-void

    .line 139
    :cond_3
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/EventUpdate;->ownerName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    iget-wide v3, v3, Lcom/google/android/apps/plus/views/EventUpdate;->timestamp:J

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/EventUpdate;->comment:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventUpdate;->gaiaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/EventUpdate;->gaiaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 149
    :cond_35
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    goto :goto_2
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-boolean v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sInitialized:Z

    if-nez v1, :cond_4d

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionMarginLeft:I

    .line 58
    const v1, 0x7f0d012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionMarginRight:I

    .line 60
    const v1, 0x7f0d012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionMarginBottom:I

    .line 62
    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarMarginLeft:I

    .line 64
    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarMarginTop:I

    .line 66
    const v1, 0x7f0d012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionTopAvatarHeightPercentage:F

    .line 68
    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarSize:I

    .line 70
    sput-boolean v5, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sInitialized:Z

    .line 73
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_4d
    sget v1, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarMarginLeft:I

    sget v2, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarMarginTop:I

    sget v3, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionMarginRight:I

    sget v4, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionMarginBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->addPadding(IIII)V

    .line 76
    new-instance v1, Lcom/google/android/apps/plus/views/AvatarView;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/plus/views/AvatarView;->setRounded(Z)V

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v1, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method protected measureChildren(II)V
    .registers 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 90
    .local v12, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 91
    .local v4, height:I
    const/4 v5, 0x0

    .line 92
    .local v5, left:I
    const/4 v11, 0x0

    .line 94
    .local v11, top:I
    add-int v6, v5, v12

    .line 95
    .local v6, right:I
    add-int v3, v11, v4

    .line 98
    .local v3, bottom:I
    move v1, v5

    .line 99
    .local v1, avatarLeft:I
    move v2, v11

    .line 101
    .local v2, avatarTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    sget v15, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarSize:I

    const/high16 v16, 0x4000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    sget v16, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sAvatarSize:I

    const/high16 v17, 0x4000

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/apps/plus/views/AvatarView;->measure(II)V

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-static {v14, v1, v2}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->setCorner(Landroid/view/View;II)V

    .line 106
    sget v14, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionTopAvatarHeightPercentage:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v15}, Lcom/google/android/apps/plus/views/AvatarView;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/lit8 v9, v14, 0x0

    .line 108
    .local v9, textTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/AvatarView;->getMeasuredWidth()I

    move-result v14

    add-int/lit8 v14, v14, 0x0

    sget v15, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->sDescriptionMarginLeft:I

    add-int v8, v14, v15

    .line 109
    .local v8, textLeft:I
    sub-int v10, v6, v8

    .line 110
    .local v10, textWidth:I
    sub-int v7, v3, v9

    .line 112
    .local v7, textHeight:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    if-nez v14, :cond_7f

    const/4 v13, 0x1

    .line 114
    .local v13, wrapContent:Z
    :goto_59
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    const/high16 v14, 0x4000

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    if-eqz v13, :cond_81

    const/4 v14, 0x0

    :goto_66
    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->measure(II)V

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-static {v14, v8, v9}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->setCorner(Landroid/view/View;II)V

    .line 120
    if-nez v13, :cond_84

    const/4 v14, 0x1

    :goto_79
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->setClickable(Z)V

    .line 121
    return-void

    .line 112
    .end local v13           #wrapContent:Z
    :cond_7f
    const/4 v13, 0x0

    goto :goto_59

    .line 114
    .restart local v13       #wrapContent:Z
    :cond_81
    const/high16 v14, -0x8000

    goto :goto_66

    .line 120
    :cond_84
    const/4 v14, 0x0

    goto :goto_79
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_13

    .line 166
    instance-of v0, p1, Lcom/google/android/apps/plus/views/AvatarView;

    if-eqz v0, :cond_14

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    check-cast p1, Lcom/google/android/apps/plus/views/AvatarView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/AvatarView;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onAvatarClicked(Ljava/lang/String;)V

    .line 172
    :cond_13
    :goto_13
    return-void

    .line 169
    .restart local p1
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mUpdate:Lcom/google/android/apps/plus/views/EventUpdate;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onUpdateCardClicked(Lcom/google/android/apps/plus/views/EventUpdate;)V

    goto :goto_13
.end method

.method public onRecycle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->onRecycle()V

    .line 155
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 158
    return-void
.end method
