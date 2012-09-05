.class public Lq/E;
.super LC/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 4

    invoke-direct {p0, p1}, LC/j;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lq/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/E;->a:Ljava/lang/String;

    iget-object v0, p0, Lq/E;->a:Ljava/lang/String;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const-string v0, "id"

    invoke-static {p1, v0}, Lq/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/E;->b:Ljava/lang/String;

    iget-object v0, p0, Lq/E;->b:Ljava/lang/String;

    if-nez v0, :cond_4c

    const-string v0, "x"

    invoke-static {p1, v0}, Lq/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lq/E;->d:I

    const-string v0, "y"

    invoke-static {p1, v0}, Lq/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lq/E;->e:I

    :goto_3b
    const-string v0, "position"

    invoke-static {p1, v0}, Lq/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/E;->f:Ljava/lang/String;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lq/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/E;->c:Ljava/lang/String;

    return-void

    :cond_4c
    const/4 v0, 0x0

    iput v0, p0, Lq/E;->e:I

    iput v0, p0, Lq/E;->d:I

    goto :goto_3b
.end method

.method private b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)[I
    .registers 11

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [I

    iget-object v0, p0, Lq/E;->b:Ljava/lang/String;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lq/E;->c:Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e()Lcom/google/android/maps/driveabout/app/am;

    move-result-object v0

    iget-object v1, p0, Lq/E;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1d

    move-object v0, v2

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v1, p0, Lq/E;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/app/Dialog;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :goto_23
    if-nez v0, :cond_2e

    move-object v0, v2

    goto :goto_1c

    :cond_27
    iget-object v0, p0, Lq/E;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_23

    :cond_2e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_36

    move-object v0, v2

    goto :goto_1c

    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lq/E;->f:Ljava/lang/String;

    if-nez v1, :cond_42

    move-object v0, v2

    goto :goto_1c

    :cond_42
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lq/E;->f:Ljava/lang/String;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lq/E;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    instance-of v5, v0, Landroid/widget/ListView;

    if-nez v5, :cond_55

    move-object v0, v2

    goto :goto_1c

    :cond_55
    check-cast v0, Landroid/widget/ListView;

    if-gez v1, :cond_5e

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5e
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v1, v2, :cond_90

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-ltz v2, :cond_90

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit8 v5, v2, 0x1

    const/16 v2, 0x14

    :goto_74
    if-lez v5, :cond_a0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    new-instance v6, Lq/D;

    const-string v7, "keyDownUp"

    invoke-direct {v6, v7, v2, v5}, Lq/D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6}, Lq/D;->a()[Landroid/view/KeyEvent;

    move-result-object v5

    array-length v6, v5

    move v2, v4

    :goto_86
    if-ge v2, v6, :cond_a0

    aget-object v7, v5, v2

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_90
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_11c

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v5, v2, 0x1

    const/16 v2, 0x13

    goto :goto_74

    :cond_a0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d7

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    aget v0, v3, v4

    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    aput v0, v3, v4

    aget v0, v3, v8

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, v3, v8

    :cond_d7
    :goto_d7
    move-object v0, v3

    goto/16 :goto_1c

    :cond_da
    aget v1, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v3, v4

    aget v1, v3, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    aput v0, v3, v8

    goto :goto_d7

    :cond_f1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, p0, Lq/E;->d:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v6

    if-gez v1, :cond_107

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_107
    iget v1, p0, Lq/E;->e:I

    int-to-float v1, v1

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    cmpg-float v5, v1, v6

    if-gez v5, :cond_115

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_115
    float-to-int v0, v0

    aput v0, v3, v4

    float-to-int v0, v1

    aput v0, v3, v8

    goto :goto_d7

    :cond_11c
    move v2, v4

    move v5, v4

    goto/16 :goto_74
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/E;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<touch action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq/E;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lq/E;->b:Ljava/lang/String;

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq/E;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lq/E;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' y=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lq/E;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_40
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)[Landroid/view/MotionEvent;
    .registers 16

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lq/E;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)[I

    move-result-object v11

    if-nez v11, :cond_c

    new-array v0, v4, [Landroid/view/MotionEvent;

    :goto_b
    return-object v0

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "tap"

    iget-object v3, p0, Lq/E;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    new-array v13, v12, [Landroid/view/MotionEvent;

    aget v2, v11, v4

    int-to-float v5, v2

    aget v2, v11, v9

    int-to-float v6, v2

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    aput-object v2, v13, v4

    aget v2, v11, v4

    int-to-float v10, v2

    aget v2, v11, v9

    int-to-float v11, v2

    move-wide v5, v0

    move-wide v7, v0

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    aput-object v0, v13, v9

    move-object v0, v13

    goto :goto_b

    :cond_3b
    const-string v2, "down"

    iget-object v3, p0, Lq/E;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    new-array v8, v9, [Landroid/view/MotionEvent;

    aget v2, v11, v4

    int-to-float v5, v2

    aget v2, v11, v9

    int-to-float v6, v2

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    aput-object v0, v8, v4

    move-object v0, v8

    goto :goto_b

    :cond_57
    const-string v2, "up"

    iget-object v3, p0, Lq/E;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    new-array v2, v9, [Landroid/view/MotionEvent;

    aget v3, v11, v4

    int-to-float v10, v3

    aget v3, v11, v9

    int-to-float v11, v3

    move-wide v5, v0

    move-wide v7, v0

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v2

    goto :goto_b

    :cond_74
    const-string v2, "move"

    iget-object v3, p0, Lq/E;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    new-array v2, v9, [Landroid/view/MotionEvent;

    aget v3, v11, v4

    int-to-float v10, v3

    aget v3, v11, v9

    int-to-float v11, v3

    move-wide v5, v0

    move-wide v7, v0

    move v9, v12

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v2

    goto/16 :goto_b

    :cond_93
    new-array v0, v4, [Landroid/view/MotionEvent;

    goto/16 :goto_b
.end method
