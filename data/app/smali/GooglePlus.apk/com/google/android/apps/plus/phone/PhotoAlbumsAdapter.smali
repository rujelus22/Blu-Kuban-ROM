.class public Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "PhotoAlbumsAdapter.java"


# instance fields
.field private final mImageViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/views/EsImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mLandscape:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ColumnGridView;Landroid/view/View$OnClickListener;)V
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "gridView"
    .parameter "listener"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mImageViews:Ljava/util/HashSet;

    .line 42
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2d

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mLandscape:Z

    .line 47
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mLandscape:Z

    if-eqz v0, :cond_2f

    :goto_21
    invoke-virtual {p3, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;)V

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setRecyclerListener(Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)V

    .line 59
    return-void

    .line 45
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1b

    :cond_2f
    move v1, v2

    .line 47
    goto :goto_21
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mImageViews:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 80
    const v12, 0x7f0900af

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/EsImageView;

    .line 81
    .local v3, image:Lcom/google/android/apps/plus/views/EsImageView;
    const v12, 0x7f090076

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 82
    .local v10, title:Landroid/widget/TextView;
    const v12, 0x7f0901a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, count:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 85
    .local v9, res:Landroid/content/res/Resources;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/16 v12, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_57

    .line 89
    const/16 v12, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, photoUrl:Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mImageViews:Ljava/util/HashSet;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v8           #photoUrl:Ljava/lang/String;
    :cond_57
    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_ca

    const v12, 0x7f080094

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, titleText:Ljava/lang/String;
    :goto_68
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_d3

    .line 103
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 104
    .local v7, photoCount:Ljava/lang/Integer;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f0e

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, formattedCount:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    .end local v2           #formattedCount:Ljava/lang/String;
    .end local v7           #photoCount:Ljava/lang/Integer;
    :goto_a2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mLandscape:Z

    if-eqz v12, :cond_d9

    const/4 v6, 0x1

    .line 114
    .local v6, orientation:I
    :goto_a9
    new-instance v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    const/4 v12, -0x3

    invoke-direct {v4, v6, v12}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(II)V

    .line 117
    .local v4, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v5

    .line 118
    .local v5, metrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v12, v5, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mLandscape:Z

    if-eqz v12, :cond_c4

    .line 119
    iget v12, v5, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    div-int/lit8 v12, v12, 0x3

    iput v12, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    .line 121
    :cond_c4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void

    .line 94
    .end local v4           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v5           #metrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    .end local v6           #orientation:I
    .end local v11           #titleText:Ljava/lang/String;
    :cond_ca
    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_68

    .line 109
    .restart local v11       #titleText:Ljava/lang/String;
    :cond_d3
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a2

    .line 112
    :cond_d9
    const/4 v6, 0x2

    goto :goto_a9
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, view:Landroid/view/View;
    return-object v1
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->onResume()V

    .line 64
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mImageViews:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/EsImageView;

    .line 65
    .local v1, image:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/EsImageView;->onResume()V

    goto :goto_9

    .line 68
    .end local v1           #image:Lcom/google/android/apps/plus/views/EsImageView;
    :cond_19
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->onStop()V

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->mImageViews:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/EsImageView;

    .line 74
    .local v1, image:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/EsImageView;->onStop()V

    goto :goto_9

    .line 76
    .end local v1           #image:Lcom/google/android/apps/plus/views/EsImageView;
    :cond_19
    return-void
.end method
