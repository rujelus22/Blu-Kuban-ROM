.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field protected static final h:Landroid/graphics/Rect;

.field protected static final i:Landroid/graphics/Rect;

.field private static final m:Landroid/graphics/Paint;

.field private static final n:Landroid/graphics/Rect;


# instance fields
.field protected a:I

.field protected final b:I

.field protected final c:I

.field protected d:Lcom/google/googlenav/ui/view/android/rideabout/m;

.field protected e:Lcom/google/googlenav/ui/view/android/rideabout/m;

.field protected f:I

.field protected g:I

.field private final j:Landroid/graphics/Bitmap;

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(I)I

    move-result v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumWidth(I)V

    .line 103
    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b:I

    .line 104
    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c:I

    .line 105
    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a:I

    .line 106
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->l:I

    .line 107
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    .line 109
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->d:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 115
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 116
    iput p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->f:I

    .line 117
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IILcom/google/googlenav/ui/view/android/rideabout/m;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 133
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne p4, v1, :cond_e

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b(Landroid/graphics/Canvas;II)V

    .line 145
    :cond_d
    :goto_d
    return-void

    .line 135
    :cond_e
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne p4, v1, :cond_d

    .line 136
    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 137
    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 138
    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 141
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_d
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 149
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 151
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    add-int/2addr v1, v2

    .line 152
    :goto_21
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-gt v2, p3, :cond_35

    .line 153
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, p2

    sget-object v5, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    add-int/2addr p2, v1

    goto :goto_21

    .line 155
    :cond_35
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g:I

    return v0
.end method

.method protected a(I)I
    .registers 3
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(IIF)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 270
    cmpl-float v2, p3, v0

    if-nez v2, :cond_12

    .line 277
    :goto_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p1

    return v0

    .line 272
    :cond_12
    cmpl-float v0, p3, v1

    if-nez v0, :cond_18

    move v0, v1

    .line 273
    goto :goto_7

    .line 275
    :cond_18
    const v0, 0x3e4ccccd

    const v1, 0x3f19999a

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    goto :goto_7
.end method

.method protected a(Landroid/graphics/Canvas;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->d:Lcom/google/googlenav/ui/view/android/rideabout/m;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(Landroid/graphics/Canvas;IILcom/google/googlenav/ui/view/android/rideabout/m;I)V

    .line 125
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(Landroid/graphics/Canvas;IILcom/google/googlenav/ui/view/android/rideabout/m;I)V

    .line 129
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IIILandroid/graphics/Bitmap;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 187
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 189
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 190
    div-int/lit8 v2, v0, 0x2

    .line 191
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    .line 192
    sub-int v2, p2, v2

    .line 194
    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    add-int v5, v3, v0

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v2

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    sget-object v5, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 198
    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v2

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-virtual {v4, v3, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 201
    int-to-float v0, v3

    int-to-float v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, p5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 167
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 170
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 171
    div-int/lit8 v2, v0, 0x2

    .line 172
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    .line 173
    sub-int v2, p2, v2

    .line 175
    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 177
    int-to-float v0, v3

    int-to-float v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, p4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 206
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 207
    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 209
    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i:Landroid/graphics/Rect;

    const/4 v4, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    .line 224
    return-void
.end method

.method public c()I
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public g()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->l:I

    return v0
.end method
