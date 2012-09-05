.class public Lcom/google/android/finsky/adapters/CorpusGridItem;
.super Ljava/lang/Object;
.source "CorpusGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# instance fields
.field private final mCellHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 10
    .parameter "context"
    .parameter "navigationManager"
    .parameter "toc"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 51
    iput-object p3, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 54
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x7f0b0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    .local v1, minHeight:I
    const v4, 0x7f0b0052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 59
    .local v2, minHeightThreshold:I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const v5, 0x7f0c0007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    div-int v0, v4, v5

    .line 61
    .local v0, displayPixelHeight:I
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/adapters/CorpusGridItem;->approximateCellHeight(III)I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mCellHeight:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/CorpusGridItem;)Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/CorpusGridItem;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private approximateCellHeight(III)I
    .registers 11
    .parameter "displayPixelHeight"
    .parameter "minHeight"
    .parameter "heightThreshold"

    .prologue
    .line 78
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    .local v0, corpusCount:I
    if-eqz p1, :cond_e

    if-nez p2, :cond_11

    .line 80
    :cond_e
    mul-int/lit8 v1, v0, 0x1

    .line 91
    :cond_10
    :goto_10
    return v1

    .line 86
    :cond_11
    mul-int v2, p2, v0

    .line 87
    .local v2, minRequired:I
    int-to-double v3, v2

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 88
    .local v1, minCellsRequired:I
    mul-int v3, v1, p1

    add-int v4, v2, p3

    if-le v3, v4, :cond_10

    .line 91
    mul-int/lit8 v3, v0, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_10
.end method

.method private bindCorpusTile(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZIII)V
    .registers 18
    .parameter "inflater"
    .parameter "group"
    .parameter "title"
    .parameter "landingUrl"
    .parameter "isFirst"
    .parameter "isLast"
    .parameter "backendColor"
    .parameter "backgroundDrawableId"
    .parameter "backendId"

    .prologue
    .line 128
    const v6, 0x7f040027

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 129
    .local v2, cell:Landroid/view/ViewGroup;
    const v6, 0x7f080087

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 132
    .local v4, strip:Landroid/view/View;
    const v6, -0x3f000001

    and-int/2addr v6, p7

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    const v6, 0x7f08008a

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v6, 0x7f08008b

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 138
    .local v3, corpusImageView:Landroid/widget/ImageView;
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    const v6, 0x7f080088

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz p5, :cond_6a

    const/4 v6, 0x2

    :goto_40
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    const v6, 0x7f080089

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz p6, :cond_6c

    const/4 v6, 0x2

    :goto_50
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    const v6, 0x7f080011

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, accessibilityOverlay:Landroid/view/View;
    new-instance v6, Lcom/google/android/finsky/adapters/CorpusGridItem$1;

    move/from16 v0, p9

    invoke-direct {v6, p0, p4, p3, v0}, Lcom/google/android/finsky/adapters/CorpusGridItem$1;-><init>(Lcom/google/android/finsky/adapters/CorpusGridItem;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    return-void

    .line 150
    .end local v1           #accessibilityOverlay:Landroid/view/View;
    :cond_6a
    const/4 v6, 0x1

    goto :goto_40

    .line 151
    :cond_6c
    const/4 v6, 0x1

    goto :goto_50
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .registers 16
    .parameter "group"
    .parameter "showCorpusStrip"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 111
    .local v10, corporaCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_11
    if-ge v12, v10, :cond_49

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 114
    .local v11, data:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    add-int/lit8 v0, v10, -0x1

    if-ne v12, v0, :cond_45

    const/4 v6, 0x1

    .line 115
    .local v6, isLast:Z
    :goto_24
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v9

    .line 117
    .local v9, backendId:I
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v7

    .line 118
    .local v7, backendHintColor:I
    invoke-static {v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusWatermarkIconBig(I)I

    move-result v8

    .line 120
    .local v8, backendDrawable:I
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v12, :cond_47

    const/4 v5, 0x1

    :goto_3d
    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/CorpusGridItem;->bindCorpusTile(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZIII)V

    .line 111
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 114
    .end local v6           #isLast:Z
    .end local v7           #backendHintColor:I
    .end local v8           #backendDrawable:I
    .end local v9           #backendId:I
    :cond_45
    const/4 v6, 0x0

    goto :goto_24

    .line 120
    .restart local v6       #isLast:Z
    .restart local v7       #backendHintColor:I
    .restart local v8       #backendDrawable:I
    .restart local v9       #backendId:I
    :cond_47
    const/4 v5, 0x0

    goto :goto_3d

    .line 123
    .end local v6           #isLast:Z
    .end local v7           #backendHintColor:I
    .end local v8           #backendDrawable:I
    .end local v9           #backendId:I
    .end local v11           #data:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_49
    return-void
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->CORPUS_2xN:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 104
    const v0, 0x7f040028

    return v0
.end method
