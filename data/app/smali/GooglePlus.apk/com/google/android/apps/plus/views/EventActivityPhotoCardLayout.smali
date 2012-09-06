.class public Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;
.super Lcom/google/android/apps/plus/views/CardViewLayout;
.source "EventActivityPhotoCardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sAvatarMarginBottom:I

.field private static sAvatarMarginLeft:I

.field private static sAvatarSize:I

.field private static sImageMarginBottom:I

.field private static sInitialized:Z

.field private static sTextMarginLeft:I

.field private static sTextMarginRight:I


# instance fields
.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mGaiaId:Ljava/lang/String;

.field private mImageView:Lcom/google/android/apps/plus/views/EsImageView;

.field private mListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mPhotoData:[B

.field private mPhotoUrl:Ljava/lang/String;

.field private mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private setAvatar(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 191
    :cond_b
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BLcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 12
    .parameter "ownerName"
    .parameter "gaiaId"
    .parameter "timestamp"
    .parameter "photoUrl"
    .parameter "photoData"
    .parameter "listener"

    .prologue
    .line 150
    iput-object p5, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mPhotoUrl:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mPhotoData:[B

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 154
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->setAvatar(Ljava/lang/String;)V

    .line 155
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mGaiaId:Ljava/lang/String;

    .line 156
    iput-object p7, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 157
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-boolean v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sInitialized:Z

    if-nez v1, :cond_44

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sTextMarginLeft:I

    .line 66
    const v1, 0x7f0d012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sTextMarginRight:I

    .line 69
    const v1, 0x7f0d0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sImageMarginBottom:I

    .line 72
    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarSize:I

    .line 74
    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarMarginLeft:I

    .line 76
    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarMarginBottom:I

    .line 79
    sput-boolean v2, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sInitialized:Z

    .line 82
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_44
    new-instance v1, Lcom/google/android/apps/plus/views/EsImageView;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/EsImageView;->setClickable(Z)V

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/EsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v1, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->addView(Landroid/view/View;)V

    .line 90
    new-instance v1, Lcom/google/android/apps/plus/views/AvatarView;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setRounded(Z)V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setAvatarSize(I)V

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method protected measureChildren(II)V
    .registers 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 99
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 100
    .local v14, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 101
    .local v4, height:I
    const/4 v7, 0x0

    .line 102
    .local v7, left:I
    const/4 v13, 0x0

    .line 105
    .local v13, top:I
    sget v15, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sImageMarginBottom:I

    sub-int v6, v4, v15

    .line 106
    .local v6, imageHeight:I
    add-int v5, v13, v6

    .line 107
    .local v5, imageBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-static {v15, v7, v13}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->setCorner(Landroid/view/View;II)V

    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    const/high16 v16, 0x4000

    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/apps/plus/views/EsImageView;->measure(II)V

    .line 112
    sget v15, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarMarginLeft:I

    add-int v1, v7, v15

    .line 113
    .local v1, avatarLeft:I
    sget v15, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarSize:I

    add-int v2, v1, v15

    .line 114
    .local v2, avatarRight:I
    add-int v15, v13, v4

    sget v16, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarMarginBottom:I

    sub-int v15, v15, v16

    sget v16, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarSize:I

    sub-int v3, v15, v16

    .line 116
    .local v3, avatarTop:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-static {v15, v1, v3}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->setCorner(Landroid/view/View;II)V

    .line 117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    sget v16, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarSize:I

    const/high16 v17, 0x4000

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    sget v17, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sAvatarSize:I

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/apps/plus/views/AvatarView;->measure(II)V

    .line 120
    sget v15, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sTextMarginLeft:I

    add-int v10, v15, v2

    .line 121
    .local v10, textLeft:I
    sub-int v15, v14, v10

    sget v16, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->sTextMarginRight:I

    sub-int v12, v15, v16

    .line 122
    .local v12, textWidth:I
    sub-int v8, v4, v6

    .line 125
    .local v8, maxTextHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    const/high16 v16, 0x4000

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->measure(II)V

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-virtual {v15}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->getMeasuredHeight()I

    move-result v9

    .line 129
    .local v9, measuredTextHeight:I
    const/4 v15, 0x0

    sub-int v16, v8, v9

    div-int/lit8 v16, v16, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v11, v5, v15

    .line 130
    .local v11, textTop:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-static {v15, v10, v11}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->setCorner(Landroid/view/View;II)V

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 198
    instance-of v0, p1, Lcom/google/android/apps/plus/views/AvatarView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_14

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    check-cast p1, Lcom/google/android/apps/plus/views/AvatarView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/AvatarView;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/EventActionListener;->onAvatarClicked(Ljava/lang/String;)V

    .line 204
    :cond_13
    :goto_13
    return-void

    .line 200
    .restart local p1
    :cond_14
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mPhotoData:[B

    if-eqz v0, :cond_13

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mPhotoData:[B

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/json/EsJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mGaiaId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/plus/views/EventActionListener;->onPhotoClicked(Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;Ljava/lang/String;)V

    goto :goto_13
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/plus/views/CardViewLayout;->onLayout(ZIIII)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->setPhotoUrl(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->onRecycle()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 163
    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 164
    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mGaiaId:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mPhotoData:[B

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mTextDescriptionView:Lcom/google/android/apps/plus/views/CardTitleDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->clear()V

    .line 167
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .registers 8
    .parameter "url"

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/EsImageView;->getWidth()I

    move-result v3

    .line 176
    .local v3, width:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/EsImageView;->getHeight()I

    move-result v4

    .line 177
    .local v4, height:I
    new-instance v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 179
    .local v0, request:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->mImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 181
    .end local v0           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v3           #width:I
    .end local v4           #height:I
    :cond_24
    return-void
.end method
