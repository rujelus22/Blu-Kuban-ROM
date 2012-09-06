.class public Lcom/google/googlenav/ui/android/ae;
.super Lcom/google/android/maps/driveabout/vector/g;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private volatile b:Landroid/view/View$OnClickListener;

.field private volatile c:Landroid/view/View$OnClickListener;

.field private volatile d:F

.field private volatile e:F

.field private volatile f:F

.field private volatile g:F

.field private volatile h:F

.field private volatile i:Lcom/google/googlenav/ui/android/ag;

.field private volatile j:Lcom/google/googlenav/ui/android/ag;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/g;-><init>(Landroid/view/View;)V

    .line 33
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->a:Ljava/util/Map;

    .line 38
    iput-object v1, p0, Lcom/google/googlenav/ui/android/ae;->b:Landroid/view/View$OnClickListener;

    .line 39
    iput-object v1, p0, Lcom/google/googlenav/ui/android/ae;->c:Landroid/view/View$OnClickListener;

    .line 57
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/ui/android/ag;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->i:Lcom/google/googlenav/ui/android/ag;

    .line 62
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/ui/android/ag;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->j:Lcom/google/googlenav/ui/android/ag;

    .line 66
    return-void
.end method

.method private a(Landroid/view/View;FF)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x4780

    .line 172
    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/BubbleButton;

    .line 177
    iget v2, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    sub-float v2, p2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 178
    mul-float/2addr v2, v5

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 180
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_25

    .line 181
    iput-object v1, p0, Lcom/google/googlenav/ui/android/ae;->b:Landroid/view/View$OnClickListener;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/ae;->e:F

    move v0, v2

    .line 200
    :goto_24
    return v0

    .line 186
    :cond_25
    const v3, 0x7f10004b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, p3

    iput v3, p0, Lcom/google/googlenav/ui/android/ae;->e:F

    .line 193
    iget v3, p0, Lcom/google/googlenav/ui/android/ae;->e:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    div-float/2addr v3, p2

    float-to-int v3, v3

    add-int/2addr v3, v2

    .line 196
    iget-object v4, p0, Lcom/google/googlenav/ui/android/ae;->a:Ljava/util/Map;

    sget-object v5, Lcom/google/googlenav/ui/android/ag;->b:Lcom/google/googlenav/ui/android/ag;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/android/ae;->a(II)Lcom/google/android/maps/driveabout/vector/h;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_58
    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->b:Landroid/view/View$OnClickListener;

    move v0, v3

    .line 200
    goto :goto_24

    :cond_5c
    move-object v0, v1

    .line 198
    goto :goto_58
.end method

.method private static a(II)Lcom/google/android/maps/driveabout/vector/h;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x1

    const/4 v4, 0x0

    .line 154
    new-instance v0, Lcom/google/android/maps/driveabout/vector/h;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/h;-><init>()V

    .line 156
    new-instance v1, Lcom/google/android/maps/driveabout/vector/dZ;

    const/16 v2, 0xc

    new-array v2, v2, [I

    aput p0, v2, v4

    aput v4, v2, v6

    aput v5, v2, v7

    aput p0, v2, v8

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput p1, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/dZ;-><init>([I)V

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/h;->a:Lcom/google/android/maps/driveabout/vector/dY;

    .line 162
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cN;

    const/16 v2, 0x8

    new-array v2, v2, [I

    aput p0, v2, v4

    aput v4, v2, v6

    aput p0, v2, v7

    aput v5, v2, v8

    const/4 v3, 0x4

    aput p1, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;-><init>([I)V

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/h;->b:Lcom/google/android/maps/driveabout/vector/cM;

    .line 168
    return-object v0
.end method

.method private a(F)Z
    .registers 4
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->g:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->g:F

    iget v1, p0, Lcom/google/googlenav/ui/android/ae;->e:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private b(Landroid/view/View;FF)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x4780

    .line 204
    const v0, 0x7f10004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/BubbleButton;

    .line 206
    iget v2, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    sub-float v2, p2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    add-float/2addr v3, v2

    .line 207
    mul-float v2, v7, v3

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 210
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_29

    .line 211
    iput-object v1, p0, Lcom/google/googlenav/ui/android/ae;->c:Landroid/view/View$OnClickListener;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/ae;->f:F

    move v0, v2

    .line 230
    :goto_28
    return v0

    .line 216
    :cond_29
    const v4, 0x7f10004e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    .line 220
    iget v6, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, p3

    sub-float v4, v6, v4

    iput v4, p0, Lcom/google/googlenav/ui/android/ae;->f:F

    .line 224
    iget v4, p0, Lcom/google/googlenav/ui/android/ae;->f:F

    sub-float/2addr v3, v4

    int-to-float v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v3, v7

    div-float/2addr v3, p2

    float-to-int v3, v3

    .line 227
    iget-object v4, p0, Lcom/google/googlenav/ui/android/ae;->a:Ljava/util/Map;

    sget-object v5, Lcom/google/googlenav/ui/android/ag;->d:Lcom/google/googlenav/ui/android/ag;

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/android/ae;->a(II)Lcom/google/android/maps/driveabout/vector/h;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_60
    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->c:Landroid/view/View$OnClickListener;

    move v0, v3

    .line 230
    goto :goto_28

    :cond_64
    move-object v0, v1

    .line 229
    goto :goto_60
.end method

.method private b(F)Z
    .registers 4
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->h:F

    iget v1, p0, Lcom/google/googlenav/ui/android/ae;->f:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->h:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private c(F)Z
    .registers 3
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->g:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->h:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private d(F)Lcom/google/googlenav/ui/android/ag;
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ae;->c(F)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 87
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ae;->a(F)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_23

    .line 89
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->b:Lcom/google/googlenav/ui/android/ag;

    .line 99
    :goto_12
    return-object v0

    .line 91
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ae;->b(F)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_23

    .line 93
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->d:Lcom/google/googlenav/ui/android/ag;

    goto :goto_12

    .line 96
    :cond_20
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->c:Lcom/google/googlenav/ui/android/ag;

    goto :goto_12

    .line 99
    :cond_23
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/ui/android/ag;

    goto :goto_12
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/h;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ae;->i:Lcom/google/googlenav/ui/android/ag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/h;

    return-object v0
.end method

.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/ae;->g:F

    .line 105
    iget v0, p0, Lcom/google/googlenav/ui/android/ae;->g:F

    iget v1, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/android/ae;->h:F

    .line 106
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 120
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/ui/android/ag;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->i:Lcom/google/googlenav/ui/android/ag;

    .line 121
    return-void
.end method

.method public b(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ae;->d(F)Lcom/google/googlenav/ui/android/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->j:Lcom/google/googlenav/ui/android/ag;

    .line 111
    return-void
.end method

.method public c(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ae;->d(F)Lcom/google/googlenav/ui/android/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ae;->i:Lcom/google/googlenav/ui/android/ag;

    .line 116
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 131
    sget-object v0, Lcom/google/googlenav/ui/android/af;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ae;->j:Lcom/google/googlenav/ui/android/ag;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/ag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 148
    :cond_d
    :goto_d
    return-void

    .line 133
    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ae;->e()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_d

    .line 138
    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ae;->e()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_d

    .line 143
    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ae;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_d

    .line 131
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_e
        :pswitch_1c
        :pswitch_2a
    .end packed-switch
.end method

.method public d(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ae;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ae;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/googlenav/ui/android/ae;->d:F

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 239
    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/android/ae;->a(Landroid/view/View;FF)I

    move-result v2

    .line 240
    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/android/ae;->b(Landroid/view/View;FF)I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ae;->a:Ljava/util/Map;

    sget-object v3, Lcom/google/googlenav/ui/android/ag;->c:Lcom/google/googlenav/ui/android/ag;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/android/ae;->a(II)Lcom/google/android/maps/driveabout/vector/h;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method
