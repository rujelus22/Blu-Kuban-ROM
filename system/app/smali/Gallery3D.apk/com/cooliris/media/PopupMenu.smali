.class public final Lcom/cooliris/media/PopupMenu;
.super Lcom/cooliris/media/Layer;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/PopupMenu$PopupTexture;,
        Lcom/cooliris/media/PopupMenu$Option;,
        Lcom/cooliris/media/PopupMenu$Listener;
    }
.end annotation


# static fields
.field private static final SRC_PAINT:Landroid/graphics/Paint;


# instance fields
.field private final ICON_TITLE_CONFIG:Lcom/cooliris/media/IconTitleDrawable$Config;

.field private mListener:Lcom/cooliris/media/PopupMenu$Listener;

.field private mNeedsLayout:Z

.field private mOptions:[Lcom/cooliris/media/PopupMenu$Option;

.field private mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

.field private mRowHeight:I

.field private mSelectedItem:I

.field private mShow:Z

.field private final mShowAnim:Lcom/cooliris/media/FloatAnim;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cooliris/media/PopupMenu;->SRC_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/PopupMenu;->mListener:Lcom/cooliris/media/PopupMenu$Listener;

    .line 65
    new-array v1, v2, [Lcom/cooliris/media/PopupMenu$Option;

    iput-object v1, p0, Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;

    .line 67
    iput-boolean v2, p0, Lcom/cooliris/media/PopupMenu;->mNeedsLayout:Z

    .line 69
    iput-boolean v2, p0, Lcom/cooliris/media/PopupMenu;->mShow:Z

    .line 71
    new-instance v1, Lcom/cooliris/media/FloatAnim;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/cooliris/media/FloatAnim;-><init>(F)V

    iput-object v1, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    .line 73
    const/16 v1, 0x28

    iput v1, p0, Lcom/cooliris/media/PopupMenu;->mRowHeight:I

    .line 75
    iput v3, p0, Lcom/cooliris/media/PopupMenu;->mSelectedItem:I

    .line 78
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 79
    .local v0, paint:Landroid/text/TextPaint;
    const-string v1, "com.coolris.media"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 85
    const/high16 v1, 0x4188

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 90
    new-instance v1, Lcom/cooliris/media/IconTitleDrawable$Config;

    const/high16 v2, 0x4234

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x4208

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3, v0}, Lcom/cooliris/media/IconTitleDrawable$Config;-><init>(IILandroid/text/TextPaint;)V

    iput-object v1, p0, Lcom/cooliris/media/PopupMenu;->ICON_TITLE_CONFIG:Lcom/cooliris/media/IconTitleDrawable$Config;

    .line 92
    sget-object v1, Lcom/cooliris/media/PopupMenu;->SRC_PAINT:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    new-instance v1, Lcom/cooliris/media/PopupMenu$PopupTexture;

    invoke-direct {v1, p0, p1}, Lcom/cooliris/media/PopupMenu$PopupTexture;-><init>(Lcom/cooliris/media/PopupMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    .line 97
    invoke-virtual {p0, v5}, Lcom/cooliris/media/PopupMenu;->setHidden(Z)V

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/cooliris/media/PopupMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/cooliris/media/PopupMenu;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$800()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/cooliris/media/PopupMenu;->SRC_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cooliris/media/PopupMenu;)[Lcom/cooliris/media/PopupMenu$Option;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;

    return-object v0
.end method

.method private hitTestOptions(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 369
    iget-object v2, p0, Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;

    .line 370
    .local v2, options:[Lcom/cooliris/media/PopupMenu$Option;
    array-length v1, v2

    .line 371
    .local v1, numOptions:I
    int-to-float v3, p1

    iget v4, p0, Lcom/cooliris/media/Layer;->mX:F

    sub-float/2addr v3, v4

    float-to-int p1, v3

    .line 372
    int-to-float v3, p2

    iget v4, p0, Lcom/cooliris/media/Layer;->mY:F

    sub-float/2addr v3, v4

    float-to-int p2, v3

    .line 374
    iget-boolean v3, p0, Lcom/cooliris/media/Layer;->mHidden:Z

    if-nez v3, :cond_35

    .line 375
    if-eqz v1, :cond_35

    if-ltz p1, :cond_35

    int-to-float v3, p1

    iget v4, p0, Lcom/cooliris/media/Layer;->mWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_35

    if-ltz p2, :cond_35

    .line 377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    if-eq v0, v1, :cond_35

    .line 379
    aget-object v3, v2, v0

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mBottom:I
    invoke-static {v3}, Lcom/cooliris/media/PopupMenu$Option;->access$600(Lcom/cooliris/media/PopupMenu$Option;)I

    move-result v3

    if-ge p2, v3, :cond_32

    aget-object v3, v2, v0

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mRight:I
    invoke-static {v3}, Lcom/cooliris/media/PopupMenu$Option;->access$700(Lcom/cooliris/media/PopupMenu$Option;)I

    move-result v3

    if-ge p1, v3, :cond_32

    .line 389
    .end local v0           #i:I
    :goto_31
    return v0

    .line 377
    .restart local v0       #i:I
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 389
    .end local v0           #i:I
    :cond_35
    const/4 v0, -0x1

    goto :goto_31
.end method

.method private layout(IIII)V
    .registers 30
    .parameter "pointX"
    .parameter "pointY"
    .parameter "outerWidth"
    .parameter "outerHeight"

    .prologue
    .line 291
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/PopupMenu;->mNeedsLayout:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;

    .line 295
    .local v14, options:[Lcom/cooliris/media/PopupMenu$Option;
    array-length v11, v14

    .line 296
    .local v11, numOptions:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/PopupMenu;->mRowHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .line 297
    .local v17, rowHeight:I
    mul-int v21, v11, v17

    add-int/lit8 v21, v21, 0xd

    add-int/lit8 v15, v21, 0x28

    .line 298
    .local v15, popupHeight:I
    add-int/lit8 v8, p2, -0x3c

    .line 299
    .local v8, maxPopupHeight:I
    int-to-double v0, v15

    move-wide/from16 v21, v0

    int-to-double v0, v8

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v10, v0

    .line 301
    .local v10, nCol:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_3f

    .line 302
    const/4 v10, 0x1

    .line 305
    :cond_3f
    new-array v9, v10, [I

    check-cast v9, [I

    .line 306
    .local v9, maxWidth:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_44
    if-ge v4, v10, :cond_56

    .line 307
    const/high16 v21, 0x42c8

    sget v22, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    aput v21, v9, v4

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 310
    :cond_56
    const/4 v4, 0x0

    :goto_57
    if-eq v4, v11, :cond_90

    .line 311
    aget-object v12, v14, v4

    .line 312
    .local v12, option:Lcom/cooliris/media/PopupMenu$Option;
    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;
    invoke-static {v12}, Lcom/cooliris/media/PopupMenu$Option;->access$300(Lcom/cooliris/media/PopupMenu$Option;)Lcom/cooliris/media/IconTitleDrawable;

    move-result-object v3

    .line 313
    .local v3, drawable:Lcom/cooliris/media/IconTitleDrawable;
    if-nez v3, :cond_7d

    .line 314
    new-instance v3, Lcom/cooliris/media/IconTitleDrawable;

    .end local v3           #drawable:Lcom/cooliris/media/IconTitleDrawable;
    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mTitle:Ljava/lang/String;
    invoke-static {v12}, Lcom/cooliris/media/PopupMenu$Option;->access$400(Lcom/cooliris/media/PopupMenu$Option;)Ljava/lang/String;

    move-result-object v21

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v12}, Lcom/cooliris/media/PopupMenu$Option;->access$500(Lcom/cooliris/media/PopupMenu$Option;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/PopupMenu;->ICON_TITLE_CONFIG:Lcom/cooliris/media/IconTitleDrawable$Config;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v3, v0, v1, v2}, Lcom/cooliris/media/IconTitleDrawable;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/cooliris/media/IconTitleDrawable$Config;)V

    .line 315
    .restart local v3       #drawable:Lcom/cooliris/media/IconTitleDrawable;
    #setter for: Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;
    invoke-static {v12, v3}, Lcom/cooliris/media/PopupMenu$Option;->access$302(Lcom/cooliris/media/PopupMenu$Option;Lcom/cooliris/media/IconTitleDrawable;)Lcom/cooliris/media/IconTitleDrawable;

    .line 317
    :cond_7d
    invoke-virtual {v3}, Lcom/cooliris/media/IconTitleDrawable;->getIntrinsicWidth()I

    move-result v20

    .line 318
    .local v20, width:I
    rem-int v5, v4, v10

    .line 319
    .local v5, iCol:I
    aget v21, v9, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8d

    .line 320
    aput v20, v9, v5

    .line 310
    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 325
    .end local v3           #drawable:Lcom/cooliris/media/IconTitleDrawable;
    .end local v5           #iCol:I
    .end local v12           #option:Lcom/cooliris/media/PopupMenu$Option;
    .end local v20           #width:I
    :cond_90
    const/high16 v21, 0x4170

    sget v22, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    .line 326
    .local v7, left:I
    const/high16 v21, 0x4150

    sget v22, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 327
    .local v19, top:I
    move/from16 v16, v7

    .line 329
    .local v16, right:I
    const/16 v18, 0x0

    .line 330
    .local v18, sum:I
    const/4 v4, 0x0

    :goto_a9
    if-ge v4, v10, :cond_b2

    .line 331
    aget v21, v9, v4

    add-int v18, v18, v21

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 334
    :cond_b2
    mul-int/lit8 v21, v7, 0x2

    add-int v21, v21, v18

    move/from16 v0, v21

    move/from16 v1, p3

    if-lt v0, v1, :cond_ca

    .line 335
    const/4 v4, 0x0

    :goto_bd
    if-ge v4, v10, :cond_ca

    .line 336
    mul-int/lit8 v21, v7, 0x2

    sub-int v21, p3, v21

    div-int v21, v21, v10

    aput v21, v9, v4

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_bd

    .line 340
    :cond_ca
    const/4 v4, 0x0

    :goto_cb
    if-ge v4, v10, :cond_d4

    .line 341
    aget v21, v9, v4

    add-int v16, v16, v21

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_cb

    .line 344
    :cond_d4
    const/4 v4, 0x0

    :goto_d5
    if-eq v4, v11, :cond_135

    .line 345
    aget-object v12, v14, v4

    .line 346
    .restart local v12       #option:Lcom/cooliris/media/PopupMenu$Option;
    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;
    invoke-static {v12}, Lcom/cooliris/media/PopupMenu$Option;->access$300(Lcom/cooliris/media/PopupMenu$Option;)Lcom/cooliris/media/IconTitleDrawable;

    move-result-object v3

    .line 347
    .restart local v3       #drawable:Lcom/cooliris/media/IconTitleDrawable;
    add-int v21, v19, v17

    move/from16 v0, v21

    #setter for: Lcom/cooliris/media/PopupMenu$Option;->mBottom:I
    invoke-static {v12, v0}, Lcom/cooliris/media/PopupMenu$Option;->access$602(Lcom/cooliris/media/PopupMenu$Option;I)I

    .line 349
    const/high16 v21, 0x4170

    sget v22, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v13, v0

    .line 350
    .local v13, option_left:I
    const/16 v21, 0x0

    aget v21, v9, v21

    add-int v21, v21, v13

    move/from16 v0, v21

    #setter for: Lcom/cooliris/media/PopupMenu$Option;->mRight:I
    invoke-static {v12, v0}, Lcom/cooliris/media/PopupMenu$Option;->access$702(Lcom/cooliris/media/PopupMenu$Option;I)I

    .line 352
    const/4 v6, 0x1

    .local v6, j:I
    :goto_f9
    rem-int v21, v4, v10

    move/from16 v0, v21

    if-gt v6, v0, :cond_10f

    .line 353
    add-int/lit8 v21, v6, -0x1

    aget v21, v9, v21

    add-int v13, v13, v21

    .line 354
    aget v21, v9, v6

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/cooliris/media/PopupMenu$Option;->access$712(Lcom/cooliris/media/PopupMenu$Option;I)I

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_f9

    .line 356
    :cond_10f
    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mRight:I
    invoke-static {v12}, Lcom/cooliris/media/PopupMenu$Option;->access$700(Lcom/cooliris/media/PopupMenu$Option;)I

    move-result v21

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mBottom:I
    invoke-static {v12}, Lcom/cooliris/media/PopupMenu$Option;->access$600(Lcom/cooliris/media/PopupMenu$Option;)I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v3, v13, v0, v1, v2}, Lcom/cooliris/media/IconTitleDrawable;->setBounds(IIII)V

    .line 358
    rem-int v21, v4, v10

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_130

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_132

    .line 359
    :cond_130
    add-int v19, v19, v17

    .line 344
    :cond_132
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 364
    .end local v3           #drawable:Lcom/cooliris/media/IconTitleDrawable;
    .end local v6           #j:I
    .end local v12           #option:Lcom/cooliris/media/PopupMenu$Option;
    .end local v13           #option_left:I
    :cond_135
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4170

    sget v23, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4220

    sget v24, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PopupMenu;->setSize(FF)V

    .line 366
    return-void
.end method

.method private setSelectedItem(I)V
    .registers 3
    .parameter "hit"

    .prologue
    .line 195
    iget v0, p0, Lcom/cooliris/media/PopupMenu;->mSelectedItem:I

    if-eq v0, p1, :cond_14

    .line 196
    iput p1, p0, Lcom/cooliris/media/PopupMenu;->mSelectedItem:I

    .line 197
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    invoke-virtual {v0}, Lcom/cooliris/media/PopupMenu$PopupTexture;->setNeedsDraw()V

    .line 198
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mListener:Lcom/cooliris/media/PopupMenu$Listener;

    if-eqz v0, :cond_14

    .line 199
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mListener:Lcom/cooliris/media/PopupMenu$Listener;

    invoke-interface {v0, p0, p1}, Lcom/cooliris/media/PopupMenu$Listener;->onSelectionChanged(Lcom/cooliris/media/PopupMenu;I)V

    .line 202
    :cond_14
    return-void
.end method


# virtual methods
.method public close(Z)V
    .registers 7
    .parameter "fadeOut"

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/cooliris/media/PopupMenu;->mShow:Z

    if-eqz v0, :cond_19

    .line 140
    if-eqz p1, :cond_1a

    .line 141
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    const v1, 0x3e99999a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/cooliris/media/FloatAnim;->animateValue(FFJ)V

    .line 145
    :goto_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/PopupMenu;->mShow:Z

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/PopupMenu;->mSelectedItem:I

    .line 149
    :cond_19
    return-void

    .line 143
    :cond_1a
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    invoke-virtual {v0, v4}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    goto :goto_13
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 153
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method protected onSizeChanged()V
    .registers 4

    .prologue
    .line 161
    invoke-super {p0}, Lcom/cooliris/media/Layer;->onSizeChanged()V

    .line 162
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    iget v1, p0, Lcom/cooliris/media/Layer;->mWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/cooliris/media/Layer;->mHeight:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PopupMenu$PopupTexture;->setSize(II)V

    .line 163
    return-void
.end method

.method protected onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 4
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/cooliris/media/PopupMenu;->hitTestOptions(II)I

    move-result v0

    .line 173
    .local v0, hit:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 191
    :goto_16
    const/4 v1, 0x1

    return v1

    .line 176
    :pswitch_18
    invoke-direct {p0, v0}, Lcom/cooliris/media/PopupMenu;->setSelectedItem(I)V

    goto :goto_16

    .line 179
    :pswitch_1c
    if-eq v0, v3, :cond_36

    iget v1, p0, Lcom/cooliris/media/PopupMenu;->mSelectedItem:I

    if-ne v1, v0, :cond_36

    .line 180
    iget-object v1, p0, Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;

    aget-object v1, v1, v0

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mAction:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/cooliris/media/PopupMenu$Option;->access$200(Lcom/cooliris/media/PopupMenu$Option;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 181
    iget-object v1, p0, Lcom/cooliris/media/PopupMenu;->mListener:Lcom/cooliris/media/PopupMenu$Listener;

    if-eqz v1, :cond_36

    .line 182
    iget-object v1, p0, Lcom/cooliris/media/PopupMenu;->mListener:Lcom/cooliris/media/PopupMenu$Listener;

    invoke-interface {v1, p0, v0}, Lcom/cooliris/media/PopupMenu$Listener;->onSelectionClicked(Lcom/cooliris/media/PopupMenu;I)V

    .line 186
    :cond_36
    :pswitch_36
    invoke-direct {p0, v3}, Lcom/cooliris/media/PopupMenu;->setSelectedItem(I)V

    goto :goto_16

    .line 173
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_18
        :pswitch_36
    .end packed-switch
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 16
    .parameter "view"
    .parameter "gl"

    .prologue
    const/high16 v3, 0x3f80

    .line 212
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/FloatAnim;->getValue(J)F

    move-result v7

    .line 213
    .local v7, showRatio:F
    iget-boolean v9, p0, Lcom/cooliris/media/PopupMenu;->mShow:Z

    .line 214
    .local v9, show:Z
    const v0, 0x3b449ba6

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1b

    if-nez v9, :cond_1b

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/PopupMenu;->setHidden(Z)V

    .line 219
    :cond_1b
    iget v0, p0, Lcom/cooliris/media/Layer;->mX:F

    float-to-int v11, v0

    .line 220
    .local v11, x:I
    iget v0, p0, Lcom/cooliris/media/Layer;->mY:F

    float-to-int v12, v0

    .line 221
    .local v12, y:I
    if-eqz v9, :cond_53

    cmpg-float v0, v7, v3

    if-gez v0, :cond_53

    .line 224
    const v10, 0x3f333333

    .line 225
    .local v10, split:F
    cmpg-float v0, v7, v10

    if-gez v0, :cond_47

    .line 226
    const v0, 0x3f4ccccd

    const v1, 0x3e99999a

    mul-float/2addr v1, v7

    div-float/2addr v1, v10

    add-float v8, v0, v1

    .line 230
    .local v8, scale:F
    :goto_38
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    int-to-float v3, v11

    int-to-float v4, v12

    const/high16 v5, 0x3f00

    const v6, 0x3f266666

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cooliris/media/PopupMenu$PopupTexture;->drawWithEffect(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FFFFFF)V

    .line 246
    .end local v8           #scale:F
    .end local v10           #split:F
    :cond_46
    :goto_46
    return-void

    .line 228
    .restart local v10       #split:F
    :cond_47
    sub-float v0, v3, v7

    sub-float v1, v3, v10

    div-float/2addr v0, v1

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    .restart local v8       #scale:F
    goto :goto_38

    .line 232
    .end local v8           #scale:F
    .end local v10           #split:F
    :cond_53
    cmpg-float v0, v7, v3

    if-gez v0, :cond_5a

    .line 233
    invoke-virtual {p1, v7}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 237
    :cond_5a
    const v0, 0x3ee66666

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_66

    .line 238
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    invoke-virtual {v0, p1, p2, v11, v12}, Lcom/cooliris/media/PopupMenu$PopupTexture;->draw(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 241
    :cond_66
    cmpg-float v0, v7, v3

    if-gez v0, :cond_46

    .line 242
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->resetColor()V

    goto :goto_46
.end method

.method public setListener(Lcom/cooliris/media/PopupMenu$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cooliris/media/PopupMenu;->mListener:Lcom/cooliris/media/PopupMenu$Listener;

    .line 102
    return-void
.end method

.method public setOptions([Lcom/cooliris/media/PopupMenu$Option;)V
    .registers 3
    .parameter "options"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 106
    invoke-virtual {p1}, [Lcom/cooliris/media/PopupMenu$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/PopupMenu$Option;

    iput-object v0, p0, Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/PopupMenu;->mNeedsLayout:Z

    .line 108
    return-void
.end method

.method public showAtPoint(IIII)V
    .registers 17
    .parameter "pointX"
    .parameter "pointY"
    .parameter "outerWidth"
    .parameter "outerHeight"

    .prologue
    .line 112
    iget-boolean v7, p0, Lcom/cooliris/media/PopupMenu;->mNeedsLayout:Z

    if-eqz v7, :cond_7

    .line 113
    invoke-direct/range {p0 .. p4}, Lcom/cooliris/media/PopupMenu;->layout(IIII)V

    .line 116
    :cond_7
    iget v7, p0, Lcom/cooliris/media/Layer;->mWidth:F

    float-to-int v3, v7

    .line 117
    .local v3, width:I
    iget v7, p0, Lcom/cooliris/media/Layer;->mHeight:F

    float-to-int v1, v7

    .line 118
    .local v1, height:I
    div-int/lit8 v4, v3, 0x2

    .line 119
    .local v4, widthOver2:I
    sub-int v5, p1, v4

    .line 120
    .local v5, x:I
    add-int/lit8 v7, p2, 0x14

    sub-int v6, v7, v1

    .line 121
    .local v6, y:I
    const/4 v7, 0x0

    sub-int v8, p3, v3

    invoke-static {v5, v7, v8}, Lcom/cooliris/media/Shared;->clamp(III)I

    move-result v0

    .line 122
    .local v0, clampedX:I
    iget-object v7, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    #getter for: Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/cooliris/media/PopupMenu$PopupTexture;->access$000(Lcom/cooliris/media/PopupMenu$PopupTexture;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 123
    .local v2, triangleWidthOver2:I
    iget-object v7, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    sub-int v8, v5, v0

    add-int/2addr v8, v4

    sub-int/2addr v8, v2

    const/16 v9, 0x10

    add-int/lit8 v10, v3, -0x20

    invoke-static {v8, v9, v10}, Lcom/cooliris/media/Shared;->clamp(III)I

    move-result v8

    #setter for: Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleX:I
    invoke-static {v7, v8}, Lcom/cooliris/media/PopupMenu$PopupTexture;->access$102(Lcom/cooliris/media/PopupMenu$PopupTexture;I)I

    .line 125
    iget-object v7, p0, Lcom/cooliris/media/PopupMenu;->mPopupTexture:Lcom/cooliris/media/PopupMenu$PopupTexture;

    invoke-virtual {v7}, Lcom/cooliris/media/PopupMenu$PopupTexture;->setNeedsDraw()V

    .line 126
    int-to-float v7, v0

    int-to-float v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/cooliris/media/PopupMenu;->setPosition(FF)V

    .line 131
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/cooliris/media/PopupMenu;->mShow:Z

    .line 132
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/cooliris/media/PopupMenu;->setHidden(Z)V

    .line 133
    iget-object v7, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    .line 134
    iget-object v7, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    const/high16 v8, 0x3f80

    const v9, 0x3ecccccd

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/cooliris/media/FloatAnim;->animateValue(FFJ)V

    .line 136
    return-void
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 6
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu;->mShowAnim:Lcom/cooliris/media/FloatAnim;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/FloatAnim;->getTimeRemaining(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
