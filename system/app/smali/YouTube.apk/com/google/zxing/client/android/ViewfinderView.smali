.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/google/zxing/client/android/a/c;

.field private final c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Bitmap;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/client/android/ViewfinderView;->a:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:I

    .line 68
    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->f:I

    .line 69
    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I

    .line 70
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I

    .line 71
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->l:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Bitmap;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Bitmap;

    .line 165
    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    :cond_a
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 169
    return-void
.end method

.method public final a(Lcom/google/zxing/j;)V
    .registers 5
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;

    .line 183
    monitor-enter p1

    .line 184
    :try_start_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    const/16 v2, 0x14

    if-le v1, v2, :cond_18

    .line 188
    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0xa

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    :cond_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xa0

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/c;->d()Landroid/graphics/Rect;

    move-result-object v8

    .line 84
    if-nez v8, :cond_d

    .line 160
    :goto_c
    return-void

    .line 87
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 91
    iget-object v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6e

    iget v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->f:I

    :goto_1d
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_71

    .line 99
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 91
    :cond_6e
    iget v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:I

    goto :goto_1d

    .line 104
    :cond_71
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    sget-object v1, Lcom/google/zxing/client/android/ViewfinderView;->a:[I

    iget v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/google/zxing/client/android/ViewfinderView;->a:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:I

    .line 114
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 115
    iget v1, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/c;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 118
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 119
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 121
    iget-object v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;

    .line 122
    iget-object v4, p0, Lcom/google/zxing/client/android/ViewfinderView;->l:Ljava/util/List;

    .line 123
    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 124
    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 125
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_179

    .line 126
    iput-object v12, p0, Lcom/google/zxing/client/android/ViewfinderView;->l:Ljava/util/List;

    .line 140
    :goto_13d
    if-eqz v4, :cond_1be

    .line 141
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    monitor-enter v4

    .line 144
    :try_start_14e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_152
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/j;

    .line 145
    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    add-int/2addr v7, v5

    int-to-float v7, v7

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v9, 0x4040

    iget-object v10, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_175
    .catchall {:try_start_14e .. :try_end_175} :catchall_176

    goto :goto_152

    .line 149
    :catchall_176
    move-exception v0

    monitor-exit v4

    throw v0

    .line 128
    :cond_179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;

    .line 129
    iput-object v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->l:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    monitor-enter v3

    .line 133
    :try_start_190
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_194
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/j;

    .line 134
    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v10, 0x40c0

    iget-object v11, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1b7
    .catchall {:try_start_190 .. :try_end_1b7} :catchall_1b8

    goto :goto_194

    .line 138
    :catchall_1b8
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1bb
    :try_start_1bb
    monitor-exit v3
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1b8

    goto :goto_13d

    .line 149
    :cond_1bd
    :try_start_1bd
    monitor-exit v4
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_176

    .line 154
    :cond_1be
    const-wide/16 v1, 0x50

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v0, 0x6

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v0, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_c
.end method

.method public final setCameraManager(Lcom/google/zxing/client/android/a/c;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Lcom/google/zxing/client/android/a/c;

    .line 79
    return-void
.end method
