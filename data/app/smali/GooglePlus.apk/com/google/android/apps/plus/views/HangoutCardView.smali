.class public Lcom/google/android/apps/plus/views/HangoutCardView;
.super Lcom/google/android/apps/plus/views/StreamCardView;
.source "HangoutCardView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;


# static fields
.field private static sHangoutCardViewInitialized:Z

.field private static sHangoutJoinButtonPaint:Landroid/text/TextPaint;

.field protected static sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

.field protected static sMaxHangoutAvatarsToDisplay:I


# instance fields
.field protected mAvatarsToDisplay:I

.field protected final mHangoutAvatars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/ClickableUserImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

.field protected mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field protected mUnsupportedLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/HangoutCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x7f0d01ca

    const v4, 0x7f0d01c9

    const/4 v3, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutAvatars:Ljava/util/ArrayList;

    .line 72
    sget-boolean v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_94

    .line 73
    sput-boolean v3, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutCardViewInitialized:Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    .line 78
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 79
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0116

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 82
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 86
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    .line 87
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 88
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0117

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 91
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 95
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 97
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 100
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sMaxHangoutAvatarsToDisplay:I

    .line 102
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_94
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 16
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    sget v7, Lcom/google/android/apps/plus/views/HangoutCardView;->sTopBorderPadding:I

    sget v8, Lcom/google/android/apps/plus/views/HangoutCardView;->sYPadding:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, p5

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getMediaHeightPercentage()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    sget v8, Lcom/google/android/apps/plus/views/HangoutCardView;->sYPadding:I

    sub-int v3, v7, v8

    .line 223
    .local v3, mediaHeight:I
    invoke-virtual {p0, p1, p4, v3}, Lcom/google/android/apps/plus/views/HangoutCardView;->drawMediaTopAreaStageWithTiledBackground(Landroid/graphics/Canvas;II)V

    .line 225
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_43

    .line 226
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v7

    sub-int v7, p4, v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, p2, v7

    .line 227
    .local v5, unsupportedX:I
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    add-int v6, p3, v7

    .line 228
    .local v6, unsupportedY:I
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 230
    neg-int v7, v5

    int-to-float v7, v7

    neg-int v8, v6

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    .end local v5           #unsupportedX:I
    .end local v6           #unsupportedY:I
    :cond_43
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v7, :cond_4c

    .line 234
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v7, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 237
    :cond_4c
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_72

    .line 238
    const/4 v2, 0x0

    .local v2, i:I
    :goto_51
    iget v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAvatarsToDisplay:I

    if-ge v2, v7, :cond_72

    .line 239
    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 240
    .local v0, avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 241
    .local v4, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_69

    .line 243
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 245
    :cond_69
    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/apps/plus/views/HangoutCardView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 249
    .end local v0           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #i:I
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_72
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/apps/plus/views/HangoutCardView;->drawMediaTopAreaShadow(Landroid/graphics/Canvas;II)V

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/HangoutCardView;->drawTagBarIconAndBackground(Landroid/graphics/Canvas;II)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/HangoutCardView;->drawPlusOneBar(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/apps/plus/views/HangoutCardView;->drawMediaBottomArea(Landroid/graphics/Canvas;IIII)I

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/HangoutCardView;->drawWhatsHot(Landroid/graphics/Canvas;)V

    .line 254
    return p5
.end method

.method public init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V
    .registers 21
    .parameter "cursor"
    .parameter "displaySizeType"
    .parameter "size"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewedListener"
    .parameter "plusBarClickListener"

    .prologue
    .line 108
    invoke-super/range {p0 .. p7}, Lcom/google/android/apps/plus/views/StreamCardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 111
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 113
    .local v7, hangoutDataBytes:[B
    if-eqz v7, :cond_84

    .line 115
    :try_start_b
    invoke-static {v7}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->parseFrom([B)Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getOccupantList()Ljava/util/List;

    move-result-object v12

    .line 117
    .local v12, occupants:Ljava/util/List;,"Ljava/util/List<Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;>;"
    const/4 v8, 0x0

    .local v8, i:I
    sget v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sMaxHangoutAvatarsToDisplay:I

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 118
    .local v9, num:I
    :goto_22
    if-ge v8, v9, :cond_42

    .line 119
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    .line 120
    .local v10, occupant:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v10}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    .line 123
    .local v0, userImage:Lcom/google/android/apps/plus/views/ClickableUserImage;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 126
    .end local v0           #userImage:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v10           #occupant:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    :cond_42
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/Hangout;->isInProgress(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 127
    const/4 v1, 0x1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 128
    .local v11, occupantSize:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v11, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mTag:Ljava/lang/CharSequence;

    .line 130
    sget-object v1, Lcom/google/android/apps/plus/views/HangoutCardView;->sTagHangoutBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mTagIcon:Landroid/graphics/Bitmap;
    :try_end_71
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_71} :catch_72

    .line 142
    .end local v8           #i:I
    .end local v9           #num:I
    .end local v11           #occupantSize:I
    .end local v12           #occupants:Ljava/util/List;,"Ljava/util/List<Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;>;"
    :cond_71
    :goto_71
    return-void

    .line 132
    :catch_72
    move-exception v6

    .line 133
    .local v6, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "HangoutCardView"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 134
    const-string v1, "HangoutCardView"

    const-string v2, "Error parsing HangoutData"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71

    .line 138
    .end local v6           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_84
    const-string v1, "HangoutCardView"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 139
    const-string v1, "HangoutCardView"

    const-string v2, "No hangout data!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method protected layoutElements(IIII)I
    .registers 32
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 157
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sTopBorderPadding:I

    sget v7, Lcom/google/android/apps/plus/views/HangoutCardView;->sYPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int v7, v7, p4

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getMediaHeightPercentage()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v4, v7

    sget v7, Lcom/google/android/apps/plus/views/HangoutCardView;->sYPadding:I

    sub-int v21, v4, v7

    .line 160
    .local v21, mediaHeight:I
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/apps/plus/views/HangoutCardView;->createTagBar(III)I

    .line 162
    const/16 v19, 0x0

    .line 163
    .local v19, joinButtonWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/Hangout;->isInProgress(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 165
    .local v5, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v4, v7, v8}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v25

    .line 167
    .local v25, status:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_d7

    .line 168
    new-instance v4, Landroid/text/StaticLayout;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #context:Landroid/content/Context;
    sget-object v6, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v7, p3

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    .line 187
    .end local v25           #status:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    if-nez v4, :cond_154

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getOccupantCount()I

    move-result v22

    .line 189
    .local v22, participants:I
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sXDoublePadding:I

    add-int v24, v4, p3

    .line 190
    .local v24, stageWidth:I
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sMaxHangoutAvatarsToDisplay:I

    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v7, v24, v19

    sget v8, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    div-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAvatarsToDisplay:I

    .line 192
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAvatarsToDisplay:I

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v4, :cond_138

    const/4 v4, 0x1

    :goto_8a
    add-int v17, v7, v4

    .line 193
    .local v17, itemsToDisplay:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAvatarsToDisplay:I

    sget v7, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    mul-int/2addr v4, v7

    sub-int v4, v24, v4

    sub-int v4, v4, v19

    div-int v16, v4, v17

    .line 196
    .local v16, itemMargin:I
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sLeftBorderPadding:I

    add-int v20, v4, v16

    .line 197
    .local v20, left:I
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    sget v7, Lcom/google/android/apps/plus/views/HangoutCardView;->sLeftBorderPadding:I

    add-int/2addr v4, v7

    add-int v23, v4, v16

    .line 198
    .local v23, right:I
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    sub-int v4, v21, v4

    div-int/lit8 v26, v4, 0x2

    .line 199
    .local v26, top:I
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    add-int v14, v26, v4

    .line 200
    .local v14, bottom:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_af
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAvatarsToDisplay:I

    if-ge v15, v4, :cond_13b

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 202
    .local v13, avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2, v14}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 203
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    add-int v4, v4, v16

    add-int v20, v20, v4

    .line 204
    sget v4, Lcom/google/android/apps/plus/views/HangoutCardView;->sAvatarSize:I

    add-int v4, v4, v16

    add-int v23, v23, v4

    .line 200
    add-int/lit8 v15, v15, 0x1

    goto :goto_af

    .line 172
    .end local v13           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v14           #bottom:I
    .end local v15           #i:I
    .end local v16           #itemMargin:I
    .end local v17           #itemsToDisplay:I
    .end local v20           #left:I
    .end local v22           #participants:I
    .end local v23           #right:I
    .end local v24           #stageWidth:I
    .end local v26           #top:I
    .restart local v5       #context:Landroid/content/Context;
    .restart local v25       #status:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    :cond_d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/Hangout;->isViewOnlyHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v4

    if-eqz v4, :cond_130

    const v4, 0x7f080353

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, joinButtonLabel:Ljava/lang/String;
    :goto_e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    new-instance v4, Lcom/google/android/apps/plus/views/ClickableButton;

    sget-object v7, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v8, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v9, Lcom/google/android/apps/plus/views/HangoutCardView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    div-int/lit8 v12, v21, 0x2

    move-object/from16 v10, p0

    move/from16 v11, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 181
    .local v18, joinButtonRect:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int v19, v19, v4

    .line 182
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 172
    .end local v6           #joinButtonLabel:Ljava/lang/String;
    .end local v18           #joinButtonRect:Landroid/graphics/Rect;
    :cond_130
    const v4, 0x7f080352

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e8

    .line 192
    .end local v5           #context:Landroid/content/Context;
    .end local v25           #status:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .restart local v22       #participants:I
    .restart local v24       #stageWidth:I
    :cond_138
    const/4 v4, 0x0

    goto/16 :goto_8a

    .line 207
    .restart local v14       #bottom:I
    .restart local v15       #i:I
    .restart local v16       #itemMargin:I
    .restart local v17       #itemsToDisplay:I
    .restart local v20       #left:I
    .restart local v23       #right:I
    .restart local v26       #top:I
    :cond_13b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v4, :cond_154

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 209
    .restart local v18       #joinButtonRect:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 213
    .end local v14           #bottom:I
    .end local v15           #i:I
    .end local v16           #itemMargin:I
    .end local v17           #itemsToDisplay:I
    .end local v18           #joinButtonRect:Landroid/graphics/Rect;
    .end local v20           #left:I
    .end local v22           #participants:I
    .end local v23           #right:I
    .end local v24           #stageWidth:I
    .end local v26           #top:I
    :cond_154
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/HangoutCardView;->createPlusOneBar(III)I

    .line 214
    invoke-virtual/range {p0 .. p4}, Lcom/google/android/apps/plus/views/HangoutCardView;->createMediaBottomArea(IIII)I

    .line 216
    return p4
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/StreamCardView;->onAvatarChanged(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 262
    .local v0, avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    goto :goto_9

    .line 264
    .end local v0           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    :cond_19
    return-void
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 8
    .parameter "button"

    .prologue
    .line 268
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v2, :cond_5e

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v2}, Lcom/google/android/apps/plus/service/Hangout;->isViewOnlyHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getBroadcastDetails()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getYoutubeLiveId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    const-string v2, "com.google.android.youtube"

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/hangout/Utils;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 277
    const-string v2, "com.google.android.youtube"

    const-string v3, "com.google.android.youtube.WatchActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :cond_4c
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_4f
    return-void

    .line 283
    .restart local v0       #context:Landroid/content/Context;
    :cond_50
    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAuthorGaiaId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAuthorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/google/android/apps/plus/service/Hangout;->enterGreenRoomFromStream(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)V

    goto :goto_4f

    .line 287
    .end local v0           #context:Landroid/content/Context;
    :cond_5e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/StreamCardView;->onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V

    goto :goto_4f
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onRecycle()V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 150
    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mUnsupportedLayout:Landroid/text/StaticLayout;

    .line 151
    iput-object v1, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/views/HangoutCardView;->mAvatarsToDisplay:I

    .line 153
    return-void
.end method
