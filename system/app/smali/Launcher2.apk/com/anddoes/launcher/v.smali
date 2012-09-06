.class public final Lcom/anddoes/launcher/v;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:[I

.field private J:Lcom/anddoes/launcher/Launcher;

.field final a:I

.field final b:I

.field final c:F

.field final d:F

.field private e:Lcom/anddoes/launcher/ec;

.field private f:Landroid/view/View;

.field private g:Lcom/anddoes/launcher/CellLayout;

.field private h:Lcom/anddoes/launcher/DragLayer;

.field private i:Lcom/anddoes/launcher/Workspace;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anddoes/launcher/ec;Landroid/view/View;Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/DragLayer;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/v;->I:[I

    .line 58
    const/16 v0, 0x96

    iput v0, p0, Lcom/anddoes/launcher/v;->a:I

    .line 59
    const/16 v0, 0x18

    iput v0, p0, Lcom/anddoes/launcher/v;->b:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/v;->c:F

    .line 61
    const v0, 0x3f28f5c3

    iput v0, p0, Lcom/anddoes/launcher/v;->d:F

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/anddoes/launcher/Launcher;

    iput-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    .line 75
    iput-object p2, p0, Lcom/anddoes/launcher/v;->e:Lcom/anddoes/launcher/ec;

    .line 76
    iput-object p4, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    .line 77
    iput-object p3, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    .line 78
    iput v4, p0, Lcom/anddoes/launcher/v;->z:I

    .line 79
    const/4 v0, 0x0

    .line 80
    instance-of v1, p3, Lcom/anddoes/launcher/gl;

    if-eqz v1, :cond_15b

    move-object v0, p3

    .line 81
    check-cast v0, Lcom/anddoes/launcher/gl;

    invoke-virtual {v0}, Lcom/anddoes/launcher/gl;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 82
    check-cast p3, Lcom/anddoes/launcher/gl;

    invoke-virtual {p3}, Lcom/anddoes/launcher/gl;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/anddoes/launcher/v;->z:I

    move-object v1, v0

    .line 84
    :goto_41
    iput-object p5, p0, Lcom/anddoes/launcher/v;->h:Lcom/anddoes/launcher/DragLayer;

    .line 85
    const v0, 0x7f080033

    invoke-virtual {p5, v0}, Lcom/anddoes/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/Workspace;

    iput-object v0, p0, Lcom/anddoes/launcher/v;->i:Lcom/anddoes/launcher/Workspace;

    .line 88
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aQ:Z

    if-nez v0, :cond_58

    if-nez v1, :cond_13b

    .line 89
    :cond_58
    const/4 v0, 0x3

    iput v0, p0, Lcom/anddoes/launcher/v;->z:I

    .line 90
    iput v6, p0, Lcom/anddoes/launcher/v;->C:I

    .line 91
    iput v6, p0, Lcom/anddoes/launcher/v;->D:I

    .line 98
    :goto_5f
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 99
    const v2, 0x7f020095

    .line 100
    const-string v3, "widget_resize_frame_holo"

    .line 98
    invoke-virtual {v0, p0, v2, v3}, Lcom/anddoes/launcher/c/l;->b(Landroid/view/View;ILjava/lang/String;)V

    .line 101
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/anddoes/launcher/v;->setPadding(IIII)V

    .line 104
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    .line 106
    const v3, 0x7f020097

    .line 107
    const-string v4, "widget_resize_handle_left"

    .line 105
    invoke-virtual {v0, v2, v3, v4}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 108
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    const/16 v2, 0x13

    .line 108
    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 110
    iget-object v2, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    .line 114
    const v3, 0x7f020098

    .line 115
    const-string v4, "widget_resize_handle_right"

    .line 113
    invoke-virtual {v0, v2, v3, v4}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 116
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    const/16 v2, 0x15

    .line 116
    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 118
    iget-object v2, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    .line 122
    const v3, 0x7f020099

    .line 123
    const-string v4, "widget_resize_handle_top"

    .line 121
    invoke-virtual {v0, v2, v3, v4}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    const/16 v2, 0x31

    .line 124
    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 126
    iget-object v2, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    .line 130
    const v3, 0x7f020096

    .line 131
    const-string v4, "widget_resize_handle_bottom"

    .line 129
    invoke-virtual {v0, v2, v3, v4}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 132
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    const/16 v2, 0x51

    .line 132
    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 134
    iget-object v2, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    if-eqz v1, :cond_ff

    .line 138
    iget-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .line 140
    :cond_ff
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/anddoes/launcher/v;->r:I

    .line 141
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/anddoes/launcher/v;->t:I

    .line 142
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/anddoes/launcher/v;->s:I

    .line 143
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/anddoes/launcher/v;->u:I

    .line 145
    iget v0, p0, Lcom/anddoes/launcher/v;->z:I

    if-ne v0, v6, :cond_14b

    .line 146
    iget-object v0, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 154
    const/high16 v1, 0x41c0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/v;->G:I

    .line 155
    iget v0, p0, Lcom/anddoes/launcher/v;->G:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/anddoes/launcher/v;->H:I

    .line 156
    return-void

    .line 93
    :cond_13b
    iget-object v0, p0, Lcom/anddoes/launcher/v;->J:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v0

    .line 94
    aget v2, v0, v4

    iput v2, p0, Lcom/anddoes/launcher/v;->C:I

    .line 95
    aget v0, v0, v6

    iput v0, p0, Lcom/anddoes/launcher/v;->D:I

    goto/16 :goto_5f

    .line 148
    :cond_14b
    iget v0, p0, Lcom/anddoes/launcher/v;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11d

    .line 149
    iget-object v0, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11d

    :cond_15b
    move-object v1, v0

    goto/16 :goto_41
.end method


# virtual methods
.method public final a(Z)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x3f80

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 333
    iget-object v1, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/anddoes/launcher/v;->i:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getScrollX()I

    move-result v2

    sub-int v2, v1, v2

    .line 334
    iget-object v1, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->getTop()I

    move-result v1

    iget-object v4, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/anddoes/launcher/v;->i:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v4}, Lcom/anddoes/launcher/Workspace;->getScrollY()I

    move-result v4

    sub-int v4, v1, v4

    .line 336
    iget-object v1, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 337
    iget-object v5, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v5}, Lcom/anddoes/launcher/CellLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/anddoes/launcher/CellLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 336
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 338
    iget-object v5, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 339
    iget-object v6, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/anddoes/launcher/CellLayout;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v7}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v7}, Lcom/anddoes/launcher/CellLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 338
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 341
    iget v6, p0, Lcom/anddoes/launcher/v;->G:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    iget v6, p0, Lcom/anddoes/launcher/v;->r:I

    sub-int/2addr v1, v6

    .line 342
    iget v6, p0, Lcom/anddoes/launcher/v;->s:I

    .line 341
    sub-int v6, v1, v6

    .line 343
    iget v1, p0, Lcom/anddoes/launcher/v;->G:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget v5, p0, Lcom/anddoes/launcher/v;->t:I

    sub-int/2addr v1, v5

    .line 344
    iget v5, p0, Lcom/anddoes/launcher/v;->u:I

    .line 343
    sub-int/2addr v1, v5

    .line 346
    iget-object v5, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/anddoes/launcher/v;->G:I

    sub-int/2addr v5, v7

    add-int/2addr v2, v5

    iget v5, p0, Lcom/anddoes/launcher/v;->r:I

    add-int/2addr v5, v2

    .line 347
    iget-object v2, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v7, p0, Lcom/anddoes/launcher/v;->G:I

    sub-int/2addr v2, v7

    add-int/2addr v2, v4

    iget v4, p0, Lcom/anddoes/launcher/v;->t:I

    add-int/2addr v2, v4

    .line 350
    if-gez v2, :cond_a8

    .line 351
    neg-int v2, v2

    sub-int/2addr v1, v2

    move v2, v3

    .line 354
    :cond_a8
    add-int v4, v2, v1

    iget-object v7, p0, Lcom/anddoes/launcher/v;->h:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v7}, Lcom/anddoes/launcher/DragLayer;->getHeight()I

    move-result v7

    if-le v4, v7, :cond_bc

    .line 355
    add-int v4, v2, v1

    iget-object v7, p0, Lcom/anddoes/launcher/v;->h:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v7}, Lcom/anddoes/launcher/DragLayer;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    sub-int/2addr v1, v4

    .line 358
    :cond_bc
    if-nez p1, :cond_de

    .line 359
    iput v6, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    .line 360
    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    .line 361
    iput v5, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    .line 362
    iput v2, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    .line 363
    iget-object v0, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 364
    iget-object v0, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 365
    iget-object v0, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 366
    iget-object v0, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 367
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->requestLayout()V

    .line 396
    :goto_dd
    return-void

    .line 369
    :cond_de
    const-string v4, "width"

    new-array v7, v10, [I

    iget v8, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    aput v8, v7, v3

    aput v6, v7, v9

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 370
    const-string v6, "height"

    new-array v7, v10, [I

    iget v8, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    aput v8, v7, v3

    .line 371
    aput v1, v7, v9

    .line 370
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 372
    const-string v6, "x"

    new-array v7, v10, [I

    iget v8, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    aput v8, v7, v3

    aput v5, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 373
    const-string v6, "y"

    new-array v7, v10, [I

    iget v8, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    aput v8, v7, v3

    aput v2, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 374
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v6, v3

    aput-object v1, v6, v9

    aput-object v5, v6, v10

    aput-object v2, v6, v12

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v4, v9, [F

    aput v11, v4, v3

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v3

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 377
    iget-object v4, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 378
    iget-object v5, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    const-string v6, "alpha"

    new-array v7, v9, [F

    aput v11, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 379
    new-instance v6, Lcom/anddoes/launcher/x;

    invoke-direct {v6, p0}, Lcom/anddoes/launcher/x;-><init>(Lcom/anddoes/launcher/v;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 385
    iget v7, p0, Lcom/anddoes/launcher/v;->z:I

    if-ne v7, v10, :cond_17b

    .line 386
    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    aput-object v4, v1, v9

    aput-object v5, v1, v10

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 393
    :goto_171
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 394
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_dd

    .line 387
    :cond_17b
    iget v7, p0, Lcom/anddoes/launcher/v;->z:I

    if-ne v7, v9, :cond_18b

    .line 388
    new-array v4, v12, [Landroid/animation/Animator;

    aput-object v0, v4, v3

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_171

    .line 390
    :cond_18b
    const/4 v7, 0x5

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v3

    aput-object v1, v7, v9

    aput-object v2, v7, v10

    aput-object v4, v7, v12

    const/4 v0, 0x4

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_171
.end method

.method public final a(II)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget v0, p0, Lcom/anddoes/launcher/v;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a1

    move v0, v1

    .line 160
    :goto_c
    iget v3, p0, Lcom/anddoes/launcher/v;->z:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a4

    move v3, v1

    .line 161
    :goto_13
    iget v4, p0, Lcom/anddoes/launcher/v;->H:I

    if-ge p1, v4, :cond_a7

    if-eqz v0, :cond_a7

    move v4, v1

    :goto_1a
    iput-boolean v4, p0, Lcom/anddoes/launcher/v;->n:Z

    .line 162
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/anddoes/launcher/v;->H:I

    sub-int/2addr v4, v7

    if-le p1, v4, :cond_aa

    if-eqz v0, :cond_aa

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Lcom/anddoes/launcher/v;->o:Z

    .line 163
    iget v0, p0, Lcom/anddoes/launcher/v;->H:I

    if-ge p2, v0, :cond_ad

    if-eqz v3, :cond_ad

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Lcom/anddoes/launcher/v;->p:Z

    .line 164
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/anddoes/launcher/v;->H:I

    sub-int/2addr v0, v4

    if-le p2, v0, :cond_af

    if-eqz v3, :cond_af

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/anddoes/launcher/v;->q:Z

    .line 166
    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->n:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->o:Z

    if-nez v0, :cond_52

    .line 167
    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->p:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->q:Z

    if-nez v0, :cond_52

    move v1, v2

    .line 169
    :cond_52
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->v:I

    .line 170
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->w:I

    .line 171
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->x:I

    .line 172
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getTop()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->y:I

    .line 173
    iput v2, p0, Lcom/anddoes/launcher/v;->A:I

    .line 174
    iput v2, p0, Lcom/anddoes/launcher/v;->B:I

    .line 176
    if-eqz v1, :cond_97

    .line 177
    iget-object v2, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->n:Z

    if-eqz v0, :cond_b1

    move v0, v5

    :goto_77
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 178
    iget-object v2, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->o:Z

    if-eqz v0, :cond_b3

    move v0, v5

    :goto_81
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 179
    iget-object v2, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->p:Z

    if-eqz v0, :cond_b5

    move v0, v5

    :goto_8b
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 180
    iget-object v0, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/anddoes/launcher/v;->q:Z

    if-eqz v2, :cond_b7

    :goto_94
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 182
    :cond_97
    iget-object v0, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    iget-object v2, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/anddoes/launcher/v;->I:[I

    invoke-virtual {v0, v2, v3}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;[I)V

    .line 184
    return v1

    :cond_a1
    move v0, v2

    .line 159
    goto/16 :goto_c

    :cond_a4
    move v3, v2

    .line 160
    goto/16 :goto_13

    :cond_a7
    move v4, v2

    .line 161
    goto/16 :goto_1a

    :cond_aa
    move v0, v2

    .line 162
    goto/16 :goto_28

    :cond_ad
    move v0, v2

    .line 163
    goto :goto_31

    :cond_af
    move v0, v2

    .line 164
    goto :goto_3f

    :cond_b1
    move v0, v6

    .line 177
    goto :goto_77

    :cond_b3
    move v0, v6

    .line 178
    goto :goto_81

    :cond_b5
    move v0, v6

    .line 179
    goto :goto_8b

    :cond_b7
    move v5, v6

    .line 180
    goto :goto_94
.end method

.method public final b(II)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const v4, 0x3f28f5c3

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 213
    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->n:Z

    if-eqz v0, :cond_176

    iget v0, p0, Lcom/anddoes/launcher/v;->x:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/anddoes/launcher/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->E:I

    iget v0, p0, Lcom/anddoes/launcher/v;->v:I

    iget v1, p0, Lcom/anddoes/launcher/v;->H:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/v;->E:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->E:I

    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->p:Z

    if-eqz v0, :cond_1a7

    iget v0, p0, Lcom/anddoes/launcher/v;->y:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/anddoes/launcher/v;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->F:I

    iget v0, p0, Lcom/anddoes/launcher/v;->w:I

    iget v1, p0, Lcom/anddoes/launcher/v;->H:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/v;->F:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->F:I

    .line 214
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 216
    iget-boolean v1, p0, Lcom/anddoes/launcher/v;->n:Z

    if-eqz v1, :cond_1d8

    .line 217
    iget v1, p0, Lcom/anddoes/launcher/v;->x:I

    iget v3, p0, Lcom/anddoes/launcher/v;->E:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    .line 218
    iget v1, p0, Lcom/anddoes/launcher/v;->v:I

    iget v3, p0, Lcom/anddoes/launcher/v;->E:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    .line 223
    :cond_69
    :goto_69
    iget-boolean v1, p0, Lcom/anddoes/launcher/v;->p:Z

    if-eqz v1, :cond_1e5

    .line 224
    iget v1, p0, Lcom/anddoes/launcher/v;->y:I

    iget v3, p0, Lcom/anddoes/launcher/v;->F:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    .line 225
    iget v1, p0, Lcom/anddoes/launcher/v;->w:I

    iget v3, p0, Lcom/anddoes/launcher/v;->F:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    .line 230
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->k()I

    move-result v0

    iget-object v1, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->m()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->l()I

    move-result v1

    iget-object v3, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->n()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/anddoes/launcher/v;->E:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    int-to-float v0, v0

    div-float v0, v3, v0

    iget v3, p0, Lcom/anddoes/launcher/v;->A:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/anddoes/launcher/v;->F:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    int-to-float v1, v1

    div-float v1, v3, v1

    iget v3, p0, Lcom/anddoes/launcher/v;->B:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_233

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    :goto_b9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_230

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_c5
    if-nez v1, :cond_c9

    if-eqz v4, :cond_172

    :cond_c9
    iget-object v0, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    iget-object v3, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/anddoes/launcher/v;->n:Z

    if-eqz v3, :cond_1f2

    iget-object v3, p0, Lcom/anddoes/launcher/v;->I:[I

    aget v3, v3, v2

    neg-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v6, p0, Lcom/anddoes/launcher/v;->C:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v1, v1, -0x1

    iget-object v5, p0, Lcom/anddoes/launcher/v;->I:[I

    aget v5, v5, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v6, p0, Lcom/anddoes/launcher/v;->C:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, p0, Lcom/anddoes/launcher/v;->A:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/anddoes/launcher/v;->A:I

    move v8, v3

    move v3, v1

    move v1, v8

    :goto_10a
    iget-boolean v5, p0, Lcom/anddoes/launcher/v;->p:Z

    if-eqz v5, :cond_212

    iget-object v2, p0, Lcom/anddoes/launcher/v;->I:[I

    aget v2, v2, v7

    neg-int v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    iget v6, p0, Lcom/anddoes/launcher/v;->D:I

    sub-int/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/anddoes/launcher/v;->I:[I

    aget v5, v5, v7

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    iget v6, p0, Lcom/anddoes/launcher/v;->D:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/anddoes/launcher/v;->B:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/anddoes/launcher/v;->B:I

    :cond_139
    :goto_139
    iget-boolean v5, p0, Lcom/anddoes/launcher/v;->n:Z

    if-nez v5, :cond_141

    iget-boolean v5, p0, Lcom/anddoes/launcher/v;->o:Z

    if-eqz v5, :cond_14b

    :cond_141
    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    :cond_14b
    iget-boolean v1, p0, Lcom/anddoes/launcher/v;->p:Z

    if-nez v1, :cond_153

    iget-boolean v1, p0, Lcom/anddoes/launcher/v;->q:Z

    if-eqz v1, :cond_15d

    :cond_153
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    :cond_15d
    iget-object v0, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/anddoes/launcher/v;->I:[I

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;[I)V

    iget-object v0, p0, Lcom/anddoes/launcher/v;->g:Lcom/anddoes/launcher/CellLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v7}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 231
    :cond_172
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->requestLayout()V

    .line 232
    return-void

    .line 213
    :cond_176
    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->o:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/anddoes/launcher/v;->h:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/v;->x:I

    iget v3, p0, Lcom/anddoes/launcher/v;->v:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/anddoes/launcher/v;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->E:I

    iget v0, p0, Lcom/anddoes/launcher/v;->v:I

    neg-int v0, v0

    iget v1, p0, Lcom/anddoes/launcher/v;->H:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/v;->E:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->E:I

    goto/16 :goto_2c

    :cond_1a7
    iget-boolean v0, p0, Lcom/anddoes/launcher/v;->q:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/anddoes/launcher/v;->h:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/v;->y:I

    iget v3, p0, Lcom/anddoes/launcher/v;->w:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/anddoes/launcher/v;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->F:I

    iget v0, p0, Lcom/anddoes/launcher/v;->w:I

    neg-int v0, v0

    iget v1, p0, Lcom/anddoes/launcher/v;->H:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/v;->F:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/v;->F:I

    goto/16 :goto_51

    .line 219
    :cond_1d8
    iget-boolean v1, p0, Lcom/anddoes/launcher/v;->o:Z

    if-eqz v1, :cond_69

    .line 220
    iget v1, p0, Lcom/anddoes/launcher/v;->v:I

    iget v3, p0, Lcom/anddoes/launcher/v;->E:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    goto/16 :goto_69

    .line 226
    :cond_1e5
    iget-boolean v1, p0, Lcom/anddoes/launcher/v;->q:Z

    if-eqz v1, :cond_7b

    .line 227
    iget v1, p0, Lcom/anddoes/launcher/v;->w:I

    iget v3, p0, Lcom/anddoes/launcher/v;->F:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    goto/16 :goto_7b

    .line 230
    :cond_1f2
    iget-boolean v3, p0, Lcom/anddoes/launcher/v;->o:Z

    if-eqz v3, :cond_20e

    iget-object v3, p0, Lcom/anddoes/launcher/v;->I:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v5, p0, Lcom/anddoes/launcher/v;->C:I

    sub-int/2addr v3, v5

    neg-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/anddoes/launcher/v;->A:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/anddoes/launcher/v;->A:I

    :cond_20e
    move v3, v1

    move v1, v2

    goto/16 :goto_10a

    :cond_212
    iget-boolean v5, p0, Lcom/anddoes/launcher/v;->q:Z

    if-eqz v5, :cond_139

    iget-object v5, p0, Lcom/anddoes/launcher/v;->I:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    iget v6, p0, Lcom/anddoes/launcher/v;->D:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/anddoes/launcher/v;->B:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/anddoes/launcher/v;->B:I

    goto/16 :goto_139

    :cond_230
    move v4, v2

    goto/16 :goto_c5

    :cond_233
    move v1, v2

    goto/16 :goto_b9
.end method

.method public final c(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/anddoes/launcher/v;->b(II)V

    .line 318
    iget-object v0, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 319
    invoke-virtual {p0}, Lcom/anddoes/launcher/v;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/v;->e:Lcom/anddoes/launcher/ec;

    iget v2, v5, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v3, v5, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    .line 320
    iget v4, v5, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v5, v5, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    .line 319
    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;IIII)V

    .line 321
    iget-object v0, p0, Lcom/anddoes/launcher/v;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 324
    new-instance v0, Lcom/anddoes/launcher/w;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/w;-><init>(Lcom/anddoes/launcher/v;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/v;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method
