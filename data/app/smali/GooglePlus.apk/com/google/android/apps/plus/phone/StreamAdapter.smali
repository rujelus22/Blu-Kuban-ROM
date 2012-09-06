.class public Lcom/google/android/apps/plus/phone/StreamAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "StreamAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;
.implements Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;,
        Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;
    }
.end annotation


# static fields
.field private static sDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field protected static sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mBoxLayout:[[I

.field private mCardTypes:[I

.field private mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;

.field private mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field protected mLandscape:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

.field private mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

.field private final mViewerHasReadPosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)V
    .registers 14
    .parameter "context"
    .parameter "gridView"
    .parameter "account"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewUseListener"
    .parameter "markPostsAsRead"
    .parameter "plusBarClickListener"
    .parameter "floatingComposeBarView"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 79
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I

    .line 179
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->addPartition(ZZ)V

    .line 180
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->addPartition(ZZ)V

    .line 182
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 183
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 184
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 185
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    .line 186
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    .line 187
    if-eqz p7, :cond_8d

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    .line 193
    :goto_23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_91

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    .line 196
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    if-nez v0, :cond_3c

    .line 197
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    .line 200
    :cond_3c
    if-eqz p9, :cond_51

    .line 201
    invoke-virtual {p9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-direct {p0, p9, v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->setComposeBarPadding(Landroid/view/View;I)V

    .line 203
    new-instance v0, Lcom/google/android/apps/plus/phone/ComposeBarController;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    invoke-direct {v0, p9, v2}, Lcom/google/android/apps/plus/phone/ComposeBarController;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;

    .line 206
    :cond_51
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v0, :cond_93

    move v0, v1

    :goto_56
    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 208
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v0, :cond_95

    :goto_5f
    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 210
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 211
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v1, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v1, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v2, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v2, v2, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v3, v3, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 214
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/phone/StreamAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOnScrollListener(Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;)V

    .line 298
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamAdapter$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/StreamAdapter$2;-><init>(Lcom/google/android/apps/plus/phone/StreamAdapter;)V

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setRecyclerListener(Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)V

    .line 306
    return-void

    .line 190
    :cond_8d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    goto :goto_23

    :cond_91
    move v0, v2

    .line 193
    goto :goto_30

    :cond_93
    move v0, v3

    .line 206
    goto :goto_56

    :cond_95
    move v1, v3

    .line 208
    goto :goto_5f
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Lcom/google/android/apps/plus/phone/ComposeBarController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/StreamAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/StreamAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I

    return p1
.end method

.method static synthetic access$200()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getScreenDisplayType()I
    .registers 1

    .prologue
    .line 743
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    return v0
.end method

.method private isBoxStart(I)Z
    .registers 10
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 326
    const/4 v4, -0x1

    .line 327
    .local v4, row:I
    const/4 v1, -0x1

    .line 328
    .local v1, col:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getColumnCount()I

    move-result v7

    if-ge v2, v7, :cond_1f

    .line 329
    const/4 v3, 0x0

    .local v3, j:I
    :goto_c
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    aget-object v7, v7, v2

    array-length v7, v7

    if-ge v3, v7, :cond_1d

    .line 330
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    aget-object v7, v7, v2

    aget v0, v7, v3

    .line 331
    .local v0, boxPos:I
    if-ne v0, p1, :cond_28

    .line 332
    move v4, v2

    .line 333
    move v1, v3

    .line 340
    .end local v0           #boxPos:I
    :cond_1d
    if-ltz v1, :cond_2d

    .line 345
    .end local v3           #j:I
    :cond_1f
    iget-boolean v7, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v7, :cond_32

    rem-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_30

    :cond_27
    :goto_27
    return v5

    .line 336
    .restart local v0       #boxPos:I
    .restart local v3       #j:I
    :cond_28
    if-gt v0, p1, :cond_1d

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 328
    .end local v0           #boxPos:I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v3           #j:I
    :cond_30
    move v5, v6

    .line 345
    goto :goto_27

    :cond_32
    if-eqz v4, :cond_27

    move v5, v6

    goto :goto_27
.end method

.method private setComposeBarPadding(Landroid/view/View;I)V
    .registers 9
    .parameter "composeBarView"
    .parameter "extraPadding"

    .prologue
    const v5, 0x7f09007f

    const v4, 0x7f09007e

    const v3, 0x7f09007d

    const/4 v2, 0x0

    .line 756
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_2a

    .line 757
    sget-object v1, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v1, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    add-int v0, v1, p2

    .line 758
    .local v0, padding:I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 759
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 760
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 767
    :goto_29
    return-void

    .line 762
    .end local v0           #padding:I
    :cond_2a
    move v0, p2

    .line 763
    .restart local v0       #padding:I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 764
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 765
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_29
.end method


# virtual methods
.method public bindComposeBarView(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 364
    const v5, 0x7f09007d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v5, 0x7f09007e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const v5, 0x7f09007f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v5, :cond_3c

    move v1, v3

    .line 370
    .local v1, orientation:I
    :goto_2b
    sget-object v5, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v5, v5, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v5, :cond_3e

    move v2, v3

    .line 372
    .local v2, span:I
    :goto_32
    new-instance v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    .line 374
    .local v0, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    return-void

    .end local v0           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v1           #orientation:I
    .end local v2           #span:I
    :cond_3c
    move v1, v4

    .line 368
    goto :goto_2b

    .restart local v1       #orientation:I
    :cond_3e
    move v2, v4

    .line 370
    goto :goto_32
.end method

.method public bindStreamView(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 17
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 378
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 379
    .local v12, position:I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount(I)I

    move-result v1

    add-int v13, v12, v1

    .line 380
    .local v13, realPosition:I
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    aget v2, v1, v13

    .local v2, displaySizeType:I
    move-object v0, p1

    .line 381
    check-cast v0, Lcom/google/android/apps/plus/views/StreamCardView;

    .line 383
    .local v0, cardView:Lcom/google/android/apps/plus/views/StreamCardView;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_20

    const/4 v11, 0x1

    .line 387
    .local v11, orientation:I
    :goto_17
    packed-switch v2, :pswitch_data_80

    .line 413
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 383
    .end local v11           #orientation:I
    :cond_20
    const/4 v11, 0x2

    goto :goto_17

    .line 389
    .restart local v11       #orientation:I
    :pswitch_22
    const/4 v10, 0x1

    .line 390
    .local v10, minorSpan:I
    const/4 v9, 0x1

    .line 417
    .local v9, majorSpan:I
    :goto_24
    new-instance v8, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    const/4 v1, -0x3

    invoke-direct {v8, v11, v1, v10, v9}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    .line 419
    .local v8, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    invoke-direct {p0, v13}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isBoxStart(I)Z

    move-result v1

    iput-boolean v1, v8, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    .line 421
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-nez v1, :cond_45

    sget-object v1, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v1, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v1, :cond_45

    instance-of v1, p1, Lcom/google/android/apps/plus/views/TextCardView;

    if-nez v1, :cond_42

    instance-of v1, p1, Lcom/google/android/apps/plus/views/EventStreamCardView;

    if-eqz v1, :cond_45

    .line 423
    :cond_42
    const/4 v1, -0x2

    iput v1, v8, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    .line 426
    :cond_45
    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/views/StreamCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    move-object/from16 v1, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/views/StreamCardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 430
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    if-eqz v1, :cond_5e

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    invoke-interface {v1, v13}, Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;->onViewUsed(I)V

    .line 433
    :cond_5e
    return-void

    .line 395
    .end local v8           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v9           #majorSpan:I
    .end local v10           #minorSpan:I
    :pswitch_5f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_6a

    const/4 v10, 0x2

    .line 396
    .restart local v10       #minorSpan:I
    :goto_64
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_6c

    const/4 v9, 0x1

    .line 397
    .restart local v9       #majorSpan:I
    :goto_69
    goto :goto_24

    .line 395
    .end local v9           #majorSpan:I
    .end local v10           #minorSpan:I
    :cond_6a
    const/4 v10, 0x1

    goto :goto_64

    .line 396
    .restart local v10       #minorSpan:I
    :cond_6c
    const/4 v9, 0x2

    goto :goto_69

    .line 401
    .end local v10           #minorSpan:I
    :pswitch_6e
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_79

    const/4 v10, 0x1

    .line 402
    .restart local v10       #minorSpan:I
    :goto_73
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_7b

    const/4 v9, 0x2

    .line 403
    .restart local v9       #majorSpan:I
    :goto_78
    goto :goto_24

    .line 401
    .end local v9           #majorSpan:I
    .end local v10           #minorSpan:I
    :cond_79
    const/4 v10, 0x2

    goto :goto_73

    .line 402
    .restart local v10       #minorSpan:I
    :cond_7b
    const/4 v9, 0x1

    goto :goto_78

    .line 407
    .end local v10           #minorSpan:I
    :pswitch_7d
    const/4 v10, 0x2

    .line 408
    .restart local v10       #minorSpan:I
    const/4 v9, 0x2

    .line 409
    .restart local v9       #majorSpan:I
    goto :goto_24

    .line 387
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_22
        :pswitch_5f
        :pswitch_6e
        :pswitch_7d
    .end packed-switch
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 5
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 350
    packed-switch p2, :pswitch_data_c

    .line 361
    :goto_3
    return-void

    .line 352
    :pswitch_4
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->bindComposeBarView(Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_3

    .line 357
    :pswitch_8
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->bindStreamView(Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_3

    .line 350
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public changeComposeBarCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 480
    return-void
.end method

.method public changeStreamCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 484
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->recreateBoxLayout()V

    .line 485
    return-void
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 729
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    goto :goto_7
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 692
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 693
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_19

    .line 694
    const-string v2, "StreamAdapter"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 695
    const-string v2, "StreamAdapter"

    const-string v3, "getContinuationToken - null because cursor==null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_18
    :goto_18
    return-object v0

    .line 702
    :cond_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 703
    const/16 v2, 0x18

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, continuationToken:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 705
    const-string v2, "StreamAdapter"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 706
    const-string v2, "StreamAdapter"

    const-string v3, "getContinuationToken - null because cursor\'s token is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 712
    .end local v0           #continuationToken:Ljava/lang/String;
    :cond_37
    const-string v2, "StreamAdapter"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 713
    const-string v2, "StreamAdapter"

    const-string v3, "getContinuationToken - null because cursor.moveToFirst==false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected getItemViewType(II)I
    .registers 4
    .parameter "partition"
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 650
    packed-switch p1, :pswitch_data_a

    .line 660
    :goto_4
    :pswitch_4
    return v0

    .line 656
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getStreamItemViewType(I)I

    move-result v0

    goto :goto_4

    .line 650
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getLayoutArray()[[I
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    return-object v0
.end method

.method public getStreamItemViewType(I)I
    .registers 10
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 664
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 665
    .local v0, composeBarCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_10

    .line 684
    :goto_f
    return v4

    .line 669
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 670
    .local v3, cursor:Landroid/database/Cursor;
    const/16 v4, 0x16

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 671
    .local v1, contentFlags:J
    const-wide/16 v4, 0x800

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_25

    .line 672
    const/4 v4, 0x6

    goto :goto_f

    .line 673
    :cond_25
    const-wide/16 v4, 0x1000

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2e

    .line 674
    const/4 v4, 0x5

    goto :goto_f

    .line 675
    :cond_2e
    const-wide/16 v4, 0x2000

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_37

    .line 676
    const/4 v4, 0x4

    goto :goto_f

    .line 677
    :cond_37
    const-wide/16 v4, 0x50

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_40

    .line 679
    const/4 v4, 0x3

    goto :goto_f

    .line 680
    :cond_40
    const-wide/16 v4, 0xf

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_49

    .line 682
    const/4 v4, 0x2

    goto :goto_f

    .line 684
    :cond_49
    const/4 v4, 0x1

    goto :goto_f
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 645
    const/4 v0, 0x7

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 752
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount(I)I

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHorizontal()Z
    .registers 2

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mLandscape:Z

    return v0
.end method

.method public newComposeBarView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 452
    new-instance v0, Lcom/google/android/apps/plus/views/ComposeBarView;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/ComposeBarView;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->setComposeBarPadding(Landroid/view/View;I)V

    .line 455
    return-object v0
.end method

.method public newStreamView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const-wide/16 v4, 0x0

    .line 459
    const/16 v2, 0x16

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 461
    .local v0, contentFlags:J
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 462
    new-instance v2, Lcom/google/android/apps/plus/views/EventStreamCardView;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/views/EventStreamCardView;-><init>(Landroid/content/Context;)V

    .line 474
    :goto_14
    return-object v2

    .line 463
    :cond_15
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 464
    new-instance v2, Lcom/google/android/apps/plus/views/HangoutCardView;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/views/HangoutCardView;-><init>(Landroid/content/Context;)V

    goto :goto_14

    .line 465
    :cond_22
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2f

    .line 466
    new-instance v2, Lcom/google/android/apps/plus/views/SkyjamCardView;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/views/SkyjamCardView;-><init>(Landroid/content/Context;)V

    goto :goto_14

    .line 467
    :cond_2f
    const-wide/16 v2, 0x50

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    .line 469
    new-instance v2, Lcom/google/android/apps/plus/views/ImageCardView;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/views/ImageCardView;-><init>(Landroid/content/Context;)V

    goto :goto_14

    .line 470
    :cond_3c
    const-wide/16 v2, 0xf

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    .line 472
    new-instance v2, Lcom/google/android/apps/plus/views/TextCardView;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/views/TextCardView;-><init>(Landroid/content/Context;)V

    goto :goto_14

    .line 474
    :cond_49
    new-instance v2, Lcom/google/android/apps/plus/views/DummyCardView;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/views/DummyCardView;-><init>(Landroid/content/Context;)V

    goto :goto_14
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 438
    packed-switch p2, :pswitch_data_10

    .line 448
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 440
    :pswitch_5
    invoke-virtual {p0, p1, p3, p5}, Lcom/google/android/apps/plus/phone/StreamAdapter;->newComposeBarView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    .line 444
    :pswitch_a
    invoke-virtual {p0, p1, p3, p5}, Lcom/google/android/apps/plus/phone/StreamAdapter;->newStreamView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    .line 438
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->markActivitiesAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)Ljava/lang/Integer;

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 314
    :cond_2a
    return-void
.end method

.method public onStreamCardViewed(Ljava/lang/String;)V
    .registers 3
    .parameter "activityId"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    if-eqz v0, :cond_9

    .line 723
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewerHasReadPosts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_9
    return-void
.end method

.method public recreateBoxLayout()V
    .registers 20

    .prologue
    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v13

    .line 489
    .local v13, length:I
    new-array v15, v13, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getColumnCount()I

    move-result v15

    mul-int/lit8 v16, v13, 0x2

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    .line 493
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getColumnCount()I

    move-result v10

    .local v10, iSize:I
    :goto_27
    if-ge v9, v10, :cond_3e

    .line 494
    const/4 v11, 0x0

    .local v11, j:I
    mul-int/lit8 v12, v13, 0x2

    .local v12, jSize:I
    :goto_2c
    if-ge v11, v12, :cond_3b

    .line 495
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    aget-object v15, v15, v9

    const/16 v16, -0x1

    aput v16, v15, v11

    .line 494
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    .line 493
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 499
    .end local v11           #j:I
    .end local v12           #jSize:I
    :cond_3e
    const/4 v3, 0x0

    .line 500
    .local v3, cardIndex:I
    const/4 v2, 0x0

    .line 501
    .local v2, boxLayoutColumnIndex:I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    .line 502
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_a7

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 504
    .local v7, cursorLength:I
    :goto_53
    if-ge v3, v7, :cond_a7

    .line 505
    sget-object v15, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v15, v15, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v15, :cond_70

    .line 506
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x0

    aput v16, v15, v3

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput v3, v15, v3

    .line 504
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 509
    :cond_70
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x3

    aput v16, v15, v3

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 512
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 514
    add-int/lit8 v2, v2, 0x2

    goto :goto_6d

    .line 538
    .end local v7           #cursorLength:I
    :cond_a7
    const/4 v1, 0x0

    .line 542
    .local v1, box:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    .line 543
    if-eqz v6, :cond_28c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_28c

    .line 544
    :goto_b7
    if-ge v3, v13, :cond_28c

    .line 545
    sget-object v15, Lcom/google/android/apps/plus/phone/StreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v15, v15, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v15, :cond_d4

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x0

    aput v16, v15, v3

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput v3, v15, v3

    .line 544
    :goto_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 551
    :cond_d4
    const/4 v8, 0x0

    .line 552
    .local v8, foundLayout:Z
    const/16 v15, 0x16

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 553
    .local v4, contentFlags:J
    const-wide/16 v15, 0x100

    and-long/2addr v15, v4

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_11d

    .line 554
    if-nez v1, :cond_11d

    .line 555
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x3

    aput v16, v15, v3

    .line 556
    const/16 v1, 0xf

    .line 557
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 560
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 561
    const/4 v8, 0x1

    .line 565
    :cond_11d
    if-nez v8, :cond_14f

    const-wide/16 v15, 0x200

    and-long/2addr v15, v4

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_14f

    .line 567
    and-int/lit8 v15, v1, 0x3

    if-nez v15, :cond_239

    .line 568
    or-int/lit8 v1, v1, 0x3

    .line 569
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 570
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 571
    const/4 v8, 0x1

    .line 579
    :cond_145
    :goto_145
    if-eqz v8, :cond_14f

    .line 580
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x2

    aput v16, v15, v3

    .line 584
    :cond_14f
    if-nez v8, :cond_17f

    const-wide/16 v15, 0x400

    and-long/2addr v15, v4

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_17f

    .line 586
    and-int/lit8 v15, v1, 0x5

    if-nez v15, :cond_258

    .line 587
    or-int/lit8 v1, v1, 0x5

    .line 588
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 590
    const/4 v8, 0x1

    .line 598
    :cond_175
    :goto_175
    if-eqz v8, :cond_17f

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x1

    aput v16, v15, v3

    .line 603
    :cond_17f
    if-nez v8, :cond_1a3

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mCardTypes:[I

    const/16 v16, 0x0

    aput v16, v15, v3

    .line 608
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_18a
    const/4 v15, 0x4

    if-ge v11, v15, :cond_1a3

    .line 609
    const/4 v15, 0x1

    shl-int/2addr v15, v11

    and-int/2addr v15, v1

    if-nez v15, :cond_279

    .line 610
    const/4 v15, 0x1

    shl-int/2addr v15, v11

    or-int/2addr v1, v15

    .line 611
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    shr-int/lit8 v16, v11, 0x1

    aget-object v15, v15, v16

    and-int/lit8 v16, v11, 0x1

    add-int v16, v16, v2

    aput v3, v15, v16

    .line 617
    .end local v11           #j:I
    :cond_1a3
    const-string v15, "StreamAdapter"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_22d

    .line 618
    const-string v16, "StreamAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Box: ["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    and-int/lit8 v15, v1, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_27d

    const-string v15, "1"

    :goto_1c6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    and-int/lit8 v15, v1, 0x2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_281

    const-string v15, "1"

    :goto_1d6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v16, "StreamAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "     ["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    and-int/lit8 v15, v1, 0x4

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_285

    const-string v15, "1"

    :goto_206
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    and-int/lit8 v15, v1, 0x8

    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v15, v0, :cond_289

    const-string v15, "1"

    :goto_216
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_22d
    const/16 v15, 0xf

    if-ne v1, v15, :cond_234

    .line 625
    const/4 v1, 0x0

    .line 626
    add-int/lit8 v2, v2, 0x2

    .line 629
    :cond_234
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_d1

    .line 572
    :cond_239
    and-int/lit8 v15, v1, 0xc

    if-nez v15, :cond_145

    .line 573
    or-int/lit8 v1, v1, 0xc

    .line 574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput v3, v15, v2

    .line 575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 576
    const/4 v8, 0x1

    goto/16 :goto_145

    .line 591
    :cond_258
    and-int/lit8 v15, v1, 0xa

    if-nez v15, :cond_175

    .line 592
    or-int/lit8 v1, v1, 0xa

    .line 593
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 594
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    const/16 v16, 0x1

    aget-object v15, v15, v16

    add-int/lit8 v16, v2, 0x1

    aput v3, v15, v16

    .line 595
    const/4 v8, 0x1

    goto/16 :goto_175

    .line 608
    .restart local v11       #j:I
    :cond_279
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_18a

    .line 618
    .end local v11           #j:I
    :cond_27d
    const-string v15, "0"

    goto/16 :goto_1c6

    :cond_281
    const-string v15, "0"

    goto/16 :goto_1d6

    .line 620
    :cond_285
    const-string v15, "0"

    goto/16 :goto_206

    :cond_289
    const-string v15, "0"

    goto :goto_216

    .line 633
    .end local v4           #contentFlags:J
    .end local v8           #foundLayout:Z
    :cond_28c
    const-string v15, "StreamAdapter"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_311

    .line 634
    const-string v15, "StreamAdapter"

    const-string v16, "BoxLayout:"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v9, 0x0

    mul-int/lit8 v14, v13, 0x2

    .local v14, size:I
    :goto_2a0
    if-ge v9, v14, :cond_311

    .line 636
    const-string v15, "StreamAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    aget v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    add-int/lit8 v18, v9, 0x1

    aget v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v15, "StreamAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    aget v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mBoxLayout:[[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    add-int/lit8 v18, v9, 0x1

    aget v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    add-int/lit8 v9, v9, 0x2

    goto :goto_2a0

    .line 640
    .end local v14           #size:I
    :cond_311
    return-void
.end method

.method public resetAnimationState()V
    .registers 2

    .prologue
    .line 747
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I

    .line 748
    return-void
.end method
