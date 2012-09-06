.class public Lcom/android/email/activity/MessageListItemCoordinates;
.super Ljava/lang/Object;
.source "MessageListItemCoordinates.java"


# static fields
.field private static MINIMUM_WIDTH_WIDE_MODE:I

.field private static mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/email/activity/MessageListItemCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private static sPaint:Landroid/text/TextPaint;


# instance fields
.field checkmarkWidthIncludingMargins:I

.field checkmarkX:I

.field checkmarkY:I

.field chipHeight:I

.field chipWidth:I

.field chipX:I

.field chipY:I

.field dateAscent:I

.field dateFontSize:I

.field dateXEnd:I

.field dateY:I

.field paperclipY:I

.field sendersAscent:I

.field sendersFontSize:I

.field sendersLineCount:I

.field sendersWidth:I

.field sendersX:I

.field sendersY:I

.field starX:I

.field starY:I

.field stateX:I

.field stateY:I

.field subjectAscent:I

.field subjectFontSize:I

.field subjectLineCount:I

.field subjectWidth:I

.field subjectX:I

.field subjectY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageListItemCoordinates;->MINIMUM_WIDTH_WIDE_MODE:I

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->mCache:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sPaint:Landroid/text/TextPaint;

    .line 101
    sget-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 102
    sget-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forWidth(Landroid/content/Context;I)Lcom/android/email/activity/MessageListItemCoordinates;
    .registers 22
    .parameter "context"
    .parameter "width"

    .prologue
    .line 243
    sget-object v17, Lcom/android/email/activity/MessageListItemCoordinates;->mCache:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessageListItemCoordinates;

    .line 244
    .local v5, coordinates:Lcom/android/email/activity/MessageListItemCoordinates;
    if-nez v5, :cond_1c7

    .line 245
    new-instance v5, Lcom/android/email/activity/MessageListItemCoordinates;

    .end local v5           #coordinates:Lcom/android/email/activity/MessageListItemCoordinates;
    invoke-direct {v5}, Lcom/android/email/activity/MessageListItemCoordinates;-><init>()V

    .line 246
    .restart local v5       #coordinates:Lcom/android/email/activity/MessageListItemCoordinates;
    sget-object v17, Lcom/android/email/activity/MessageListItemCoordinates;->mCache:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    invoke-static/range {p0 .. p1}, Lcom/android/email/activity/MessageListItemCoordinates;->getMode(Landroid/content/Context;I)I

    move-result v9

    .line 251
    .local v9, mode:I
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/email/activity/MessageListItemCoordinates;->getHeight(Landroid/content/Context;I)I

    move-result v7

    .line 252
    .local v7, height:I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    invoke-static {v9}, Lcom/android/email/activity/MessageListItemCoordinates;->getLayoutId(I)I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 253
    .local v15, view:Landroid/view/View;
    const/high16 v17, 0x4000

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 254
    .local v16, widthSpec:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 255
    .local v8, heightSpec:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/view/View;->measure(II)V

    .line 256
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v15, v0, v1, v2, v7}, Landroid/view/View;->layout(IIII)V

    .line 259
    const v17, 0x7f0e0084

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 260
    .local v3, checkmark:Landroid/view/View;
    invoke-static {v3}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkX:I

    .line 261
    invoke-static {v3}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkY:I

    .line 262
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkWidthIncludingMargins:I

    .line 264
    const v17, 0x7f0e0085

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 265
    .local v12, star:Landroid/view/View;
    invoke-static {v12}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->starX:I

    .line 266
    invoke-static {v12}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->starY:I

    .line 268
    const v17, 0x7f0e0083

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 269
    .local v13, state:Landroid/view/View;
    invoke-static {v13}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    .line 270
    invoke-static {v13}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    .line 272
    const v17, 0x7f0e0089

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 273
    .local v11, senders:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    .line 274
    invoke-static {v11}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersY:I

    .line 275
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersWidth:I

    .line 276
    invoke-static {v11}, Lcom/android/email/activity/MessageListItemCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersLineCount:I

    .line 277
    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersFontSize:I

    .line 278
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->ascent()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->sendersAscent:I

    .line 280
    const v17, 0x7f0e0062

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 281
    .local v14, subject:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    .line 282
    invoke-static {v14}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    .line 283
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    .line 284
    invoke-static {v14}, Lcom/android/email/activity/MessageListItemCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineCount:I

    .line 285
    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectFontSize:I

    .line 286
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->ascent()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->subjectAscent:I

    .line 288
    const v17, 0x7f0e0048

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 289
    .local v4, chip:Landroid/view/View;
    invoke-static {v4}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->chipX:I

    .line 290
    invoke-static {v4}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->chipY:I

    .line 291
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->chipWidth:I

    .line 292
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getHeight(Landroid/view/View;Z)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->chipHeight:I

    .line 294
    const v17, 0x7f0e0088

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 295
    .local v6, date:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v17

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->dateXEnd:I

    .line 296
    invoke-static {v6}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->dateY:I

    .line 297
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->dateFontSize:I

    .line 298
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->ascent()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->dateAscent:I

    .line 301
    const v17, 0x7f0e0087

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 302
    .local v10, paperclip:Landroid/view/View;
    invoke-static {v10}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/email/activity/MessageListItemCoordinates;->paperclipY:I

    .line 304
    .end local v3           #checkmark:Landroid/view/View;
    .end local v4           #chip:Landroid/view/View;
    .end local v6           #date:Landroid/widget/TextView;
    .end local v7           #height:I
    .end local v8           #heightSpec:I
    .end local v9           #mode:I
    .end local v10           #paperclip:Landroid/view/View;
    .end local v11           #senders:Landroid/widget/TextView;
    .end local v12           #star:Landroid/view/View;
    .end local v13           #state:Landroid/view/View;
    .end local v14           #subject:Landroid/widget/TextView;
    .end local v15           #view:Landroid/view/View;
    .end local v16           #widthSpec:I
    :cond_1c7
    return-object v5
.end method

.method public static getHeight(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p1, :cond_e

    const v0, 0x7f0a0004

    :goto_9
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_e
    const v0, 0x7f0a0005

    goto :goto_9
.end method

.method public static getHeight(Landroid/view/View;Z)I
    .registers 6
    .parameter "view"
    .parameter "includeMargins"

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz p1, :cond_13

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    :goto_11
    add-int/2addr v1, v2

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static getLayoutId(I)I
    .registers 4
    .parameter "mode"

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_24

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown conversation header view mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_1c
    const v0, 0x7f040035

    .line 138
    :goto_1f
    return v0

    :pswitch_20
    const v0, 0x7f040034

    goto :goto_1f

    .line 134
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private static getLineCount(Landroid/widget/TextView;)I
    .registers 3
    .parameter "textView"

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public static getMode(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "width"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    sget v2, Lcom/android/email/activity/MessageListItemCoordinates;->MINIMUM_WIDTH_WIDE_MODE:I

    if-gtz v2, :cond_11

    .line 115
    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListItemCoordinates;->MINIMUM_WIDTH_WIDE_MODE:I

    .line 119
    :cond_11
    const/4 v0, 0x1

    .line 120
    .local v0, mode:I
    sget v2, Lcom/android/email/activity/MessageListItemCoordinates;->MINIMUM_WIDTH_WIDE_MODE:I

    if-le p1, v2, :cond_17

    .line 121
    const/4 v0, 0x0

    .line 123
    :cond_17
    return v0
.end method

.method public static getWidth(Landroid/view/View;Z)I
    .registers 6
    .parameter "view"
    .parameter "includeMargins"

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz p1, :cond_13

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    :goto_11
    add-int/2addr v1, v2

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static getX(Landroid/view/View;)I
    .registers 4
    .parameter "view"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, x:I
    :goto_1
    if-eqz p0, :cond_15

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 173
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_13

    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object p0, v0

    .line 174
    :goto_12
    goto :goto_1

    .line 173
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_13
    const/4 p0, 0x0

    goto :goto_12

    .line 175
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_15
    return v1
.end method

.method private static getY(Landroid/view/View;)I
    .registers 4
    .parameter "view"

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, y:I
    :goto_1
    if-eqz p0, :cond_15

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_13

    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object p0, v0

    .line 187
    :goto_12
    goto :goto_1

    .line 186
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_13
    const/4 p0, 0x0

    goto :goto_12

    .line 188
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_15
    return v1
.end method

.method public static isMultiPane(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static resetCaches()V
    .registers 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 236
    return-void
.end method
