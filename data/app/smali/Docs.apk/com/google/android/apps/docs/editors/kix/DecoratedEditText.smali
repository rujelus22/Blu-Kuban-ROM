.class public Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;
.super Lcom/google/android/apps/docs/editors/text/EditText;
.source "DecoratedEditText.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/text/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->c:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method private a(Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;LCl;Landroid/graphics/Canvas;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 112
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a()Z

    move-result v1

    if-eqz v1, :cond_e1

    move v1, v0

    .line 113
    :goto_17
    invoke-virtual {p2, v1}, LCl;->h(I)I

    move-result v3

    .line 114
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a(ILandroid/graphics/Rect;)I

    .line 116
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    if-ne v0, v2, :cond_55

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a(I)Landroid/util/Pair;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 120
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 122
    :cond_55
    invoke-virtual {p2, v1}, LCl;->a(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a()Ljava/lang/String;

    move-result-object v7

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 130
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->b()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x2

    .line 132
    add-int/lit8 v0, v6, -0x1

    int-to-float v1, v0

    int-to-float v2, v8

    add-int/lit8 v0, v6, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    add-int/lit8 v0, v6, -0x5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    int-to-float v0, v6

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    :goto_e0
    return-void

    :cond_e1
    move v1, v2

    .line 112
    goto/16 :goto_17

    .line 139
    :cond_e4
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v0, 0x5

    .line 140
    add-int/lit8 v0, v6, -0x1

    int-to-float v1, v0

    int-to-float v2, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    add-int/lit8 v0, v6, -0x5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x5

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e0
.end method

.method private b(I)I
    .registers 6
    .parameter

    .prologue
    .line 106
    const/16 v0, 0xc0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/text/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->getHeight()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->getScrollY()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a()LCl;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v1}, LCl;->g(I)I

    move-result v3

    .line 83
    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, LCl;->g(I)I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->b()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_56

    move-result v1

    .line 85
    if-nez v1, :cond_29

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    :goto_28
    return-void

    .line 90
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v2, v3}, LCl;->c(I)I

    move-result v3

    invoke-virtual {v2, v0}, LCl;->i(I)I

    move-result v0

    const-class v4, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;

    invoke-interface {v1, v3, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;

    .line 94
    array-length v3, v0

    const/4 v1, 0x0

    :goto_48
    if-ge v1, v3, :cond_52

    aget-object v4, v0, v1

    .line 95
    invoke-direct {p0, v4, v2, p1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a(Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;LCl;Landroid/graphics/Canvas;)V
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_56

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 98
    :cond_52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_28

    :catchall_56
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method
